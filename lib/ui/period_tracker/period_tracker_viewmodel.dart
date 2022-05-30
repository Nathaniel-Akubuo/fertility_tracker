import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/calculation_service.dart';
import 'package:fertility_tracker/ui/register/widget/rounded_card_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../widgets/buttons/red_rounded_button.dart';

class PeriodTrackerViewModel
    extends StreamViewModel<DocumentSnapshot<UserModel>> {
  final _auth = FirebaseAuth.instance;
  final _users = FirebaseFirestore.instance.collection('users');
  final _navigationService = locator<NavigationService>();

  @override
  Stream<DocumentSnapshot<UserModel>> get stream => _users
      .doc(_uid)
      .withConverter<UserModel>(
          fromFirestore: (a, b) =>
              UserModel.fromMap(a.data() as Map<String, dynamic>),
          toFirestore: (a, b) => a.toMap())
      .snapshots();

  UserModel _data() {
    return data == null ? UserModel() : data!.data()!;
  }

  void navigateToDetails() {
    _navigationService.navigateTo(
      Routes.periodDetailsView,
      arguments: PeriodDetailsViewArguments(
        averageCycleLength: user.averageCycleLength!,
        lmp: user.lmp!.toDate(),
        averageNumberOfDays: user.averageNumberOfDays!,
      ),
    );
  }

  bool edited = false;
  DateTime selectedDate = DateTime.now();

  String day() {
    var lmp = user.lmp;
    if (lmp == null) return '0';
    var now = DateTime.now();
    final difference = now.difference(lmp.toDate());
    var day = difference.inDays == 0 ? 1 : difference.inDays;
    return day.toString();
  }

  void selectDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }

  String nextPeriod() {
    var lmp = user.lmp;
    if (lmp == null || user.averageNumberOfDays == null) return '';
    var value = CalculationService.calculateNextPeriod(
      lmp.toDate(),
      user.averageCycleLength!,
    );
    return groupSeparatorFormatter.format(value!);
  }

  String daysLeft() {
    var lmp = user.lmp;
    if (lmp == null || user.averageNumberOfDays == null) return '';
    var value = CalculationService.calculateNextPeriod(
      lmp.toDate(),
      user.averageCycleLength!,
    );
    return value!.difference(DateTime.now()).inDays.toString();
  }

  Future<void> changeLMP(context) async {
    var now = DateTime.now();
    var start = DateTime(now.year, now.month, 1);
    var end = DateTime(now.year, now.month + 1, 0);
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: start,
      lastDate: end,
    );
    if (date == null) return;
    await _users.doc(_uid).update({'lmp': date});
  }

  Future<void> changeCycleLength(context) async {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(borderRadius: kRoundedTopBorder),
      context: context,
      builder: (context) {
        var text = '';
        return Padding(
          padding: kMainPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpaceRegular,
              RoundedCardTextField(
                hint: user.averageCycleLength.toString(),
                onChanged: (v) => text = v,
                keyboardType: TextInputType.number,
              ),
              verticalSpaceLarge,
              GreenRoundedButton(
                color: kRed,
                text: 'DONE',
                onPressed: () {
                  if (text.isEmpty) return;

                  _users
                      .doc(_uid)
                      .update({'averageCycleLength': int.parse(text)});

                  Navigator.pop(context);
                },
              ),
              verticalSpaceLarge,
            ],
          ),
        );
      },
    );
  }

  Future<void> changePeriodDays(context) async {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(borderRadius: kRoundedTopBorder),
      context: context,
      builder: (context) {
        var text = '';
        return Padding(
          padding: kMainPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpaceRegular,
              RoundedCardTextField(
                hint: user.averageNumberOfDays.toString(),
                keyboardType: TextInputType.number,
                onChanged: (v) => text = v,
              ),
              verticalSpaceLarge,
              GreenRoundedButton(
                color: kRed,
                text: 'DONE',
                onPressed: () {
                  if (text.isEmpty) return;
                  _users
                      .doc(_uid)
                      .update({'averageNumberOfDays': int.parse(text)});

                  Navigator.pop(context);
                },
              ),
              verticalSpaceLarge,
            ],
          ),
        );
      },
    );
  }

  String fertilityStart() {
    var lmp = user.lmp;
    if (lmp == null) return '';
    var value = CalculationService.calculateFertilityWindow(
      lmp.toDate(),
      user.averageCycleLength!,
    );
    if (value == null) return '';
    var date = value.start;
    return groupSeparatorFormatter.format(date);
  }

  String fertilityEnd() {
    var lmp = user.lmp;
    if (lmp == null) return '';
    var value = CalculationService.calculateFertilityWindow(
      lmp.toDate(),
      user.averageCycleLength!,
    );
    if (value == null) return '';
    var date = value.end;
    return groupSeparatorFormatter.format(date);
  }

  String chanceOfPregnancy() {
    var lmp = user.lmp;
    if (lmp == null) return '';
    var now = DateTime.now();
    var value = CalculationService.calculateFertilityWindow(
      lmp.toDate(),
      user.averageCycleLength!,
    );
    if (value == null) return '';
    if (now.isAfter(value.start) && now.isBefore(value.end)) {
      return 'Medium to High';
    } else {
      return 'Low';
    }
  }

  String chanceOfPregnancyForDate() {
    var value =
        CalculationService.calculateFertilityWindow(lmp, averageCycleLength);
    var ovulationDate =
        CalculationService.calculateOvulation(lmp, averageCycleLength);
    if (value == null) return '';
    if (selectedDate.toIso8601String().replaceAll('Z', '') ==
        ovulationDate?.toIso8601String().replaceAll('Z', '')) {
      return 'Ovulation day';
    } else if (selectedDate.isAfter(value.start) &&
        (selectedDate.isBefore(value.end) ||
            selectedDate.toIso8601String().replaceAll('Z', '') ==
                value.end.toIso8601String().replaceAll('Z', ''))) {
      return 'Medium to High';
    } else {
      return 'Low';
    }
  }

  String getPhase() {
    var lmp = user.lmp;

    if (lmp == null) return '';
    var now = DateTime.now();
    var currentDate = DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0);
    var ovulationDate = CalculationService.calculateOvulation(
      lmp.toDate(),
      user.averageCycleLength!,
    );

    var lmpDate = lmp.toDate();
    var periodRange = DateTimeRange(start: lmpDate, end: ovulationDate!);
    if (ovulationDate == currentDate) {
      return 'Ovulatory Phase';
    } else if (currentDate.isAfter(periodRange.start) &&
        currentDate.isBefore(periodRange.end)) {
      return 'Follicular Phase';
    } else {
      return 'Lutheal Phase';
    }
  }

  DateTimeRange calendarRange() {
    var now = DateTime.now();
    var start = DateTime(now.year, now.month, 1);
    var end = DateTime(now.year, now.month + 1, 0);
    return DateTimeRange(start: start, end: end);
  }

  late DateTime lmp;
  late int averageCycleLength;
  late int averageNumberOfDays;

  List<bool> periodBuilder(DateTime date) {
    var periodRange = DateTimeRange(
      start: lmp,
      end: lmp.add(Duration(days: averageNumberOfDays)),
    );

    if (date.isAfter(periodRange.start) && date.isBefore(periodRange.end)) {
      return [true];
    } else {
      return [];
    }
  }

  DateTimeRange get range =>
      CalculationService.calculateFertilityWindow(lmp, averageCycleLength)!;

  List<bool?> eventLoader(DateTime date) {
    if (date.day % 2 == 0) {
      return [true];
    } else {
      return [];
    }
  }

  final groupSeparatorFormatter = DateFormat('d MMM');

  String get _uid => _auth.currentUser!.uid;

  UserModel get user => _data();
}
