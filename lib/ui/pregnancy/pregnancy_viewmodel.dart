import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/calculation_service.dart';

class PregnancyViewModel extends StreamViewModel<DocumentSnapshot<UserModel>> {
  final _navigationService = locator<NavigationService>();
  final _auth = FirebaseAuth.instance;
  final _users = FirebaseFirestore.instance.collection('users');

  void stuff() {
    _navigationService.navigateTo(
      Routes.pregnancyDetails,
      arguments: PregnancyDetailsArguments(
        lmp: edited ? newLMP! : user.lmp!.toDate(),
      ),
    );
  }

  bool edited = false;
  DateTime? newLMP;

  int get week => _week();

  int get currentWeek => _currentWeek();

  int _week() {
    if (edited) {
      final now = DateTime.now();
      if (newLMP == null) return 1;
      final difference = now.difference(newLMP!);
      var week = (difference.inDays / 7).floor();
      if (week < 1) {
        week = 1;
      } else if (week > 39) {
        week = 39;
      }
      return week;
    } else {
      final now = DateTime.now();
      if (user.lmp == null) return 1;
      final difference = now.difference(user.lmp!.toDate());
      var week = (difference.inDays / 7).floor();
      if (week < 1) {
        week = 1;
      } else if (week > 39) {
        week = 39;
      }
      return week;
    }
  }

  int _currentWeek() {
    final now = DateTime.now();
    if (user.lmp == null) return 1;
    final difference = now.difference(user.lmp!.toDate());
    var week = (difference.inDays / 7).floor();
    if (week < 1) {
      week = 1;
    } else if (week > 39) {
      week = 39;
    }
    return week;
  }

  Future<void> setDate({bool forward = true}) async {
    edited = true;
    var sevenDays = const Duration(days: 7);
    var baseDate = newLMP ?? user.lmp!.toDate();
    newLMP = forward
        ? baseDate.subtract(sevenDays)
        : baseDate.add(const Duration(days: 7));
    notifyListeners();
  }

  DateTime dueDate(DateTime? lmp) {
    if (lmp == null) return DateTime.now();
    var value = CalculationService.calculateDueDate(lmp);
    return value!;
  }

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

  String get _uid => _auth.currentUser!.uid;

  UserModel get user => _data();

  String trimester() {
    var value = _week();
    if (value > 0 && value <= 13) {
      return '1st';
    } else if (value >= 14 && value <= 27) {
      return '2nd';
    } else {
      return '3rd';
    }
  }
}
