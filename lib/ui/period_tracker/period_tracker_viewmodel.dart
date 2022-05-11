import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/calculation_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

class PeriodTrackerViewModel
    extends StreamViewModel<DocumentSnapshot<UserModel>> {
  final _auth = FirebaseAuth.instance;
  final _users = FirebaseFirestore.instance.collection('users');

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

  String day() {
    var lmp = user.lmp;
    if (lmp == null) return '0';
    var now = DateTime.now();
    final difference = now.difference(lmp.toDate());
    var day = difference.inDays == 0 ? 1 : difference.inDays;
    return day.toString();
  }

  String nextPeriod() {
    var lmp = user.lmp;
    if (lmp == null || user.averageNumberOfDays == null) return '';
    var value = CalculationService.calculateNextPeriod(
      lmp.toDate(),
      user.averageNumberOfDays!,
    );
    return groupSeparatorFormatter.format(value!);
  }

  String fertilityStart() {
    var lmp = user.lmp;
    if (lmp == null) return '';
    var value = CalculationService.calculateFertilityWindow(
      lmp.toDate(),
      user.averageNumberOfDays!,
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
      user.averageNumberOfDays!,
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
      user.averageNumberOfDays!,
    );
    if (value == null) return '';
    if (now.isAfter(value.start) && now.isBefore(value.end)) {
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
      user.averageNumberOfDays!,
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

  final groupSeparatorFormatter = DateFormat('d MMM');

  String get _uid => _auth.currentUser!.uid;

  UserModel get user => _data();
}
