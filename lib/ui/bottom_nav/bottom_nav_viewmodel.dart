import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/services/auth_service.dart';
import 'package:fertility_tracker/ui/period_tracker/period_tracker.dart';
import 'package:fertility_tracker/ui/pregnancy/pregnancy_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../constants/styles.dart';
import '../../models/user_model.dart';
import '../../services/custom_dialog_service.dart';

class BottomNavViewModel extends StreamViewModel<DocumentSnapshot<UserModel>> {
  List<Widget> pages = [const PeriodTrackerView(), const PregnancyView()];
  final _auth = FirebaseAuth.instance;
  final _users = FirebaseFirestore.instance.collection('users');
  final _authService = locator<AuthService>();

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

  Future<void> logout(context) async {
    final _dialog = locator<CustomDialogService>();
    _dialog.showSuccessDialog(
      context,
      'LOGOUT?',
      'Are you sure you want to logout?',
      [
        TextButton(
          onPressed: () => _authService.logout(),
          child: Text(
            'LOGOUT',
            style: kButtonTextStyle.copyWith(color: kRed),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'CANCEL',
            style: kButtonTextStyle.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  String get _uid => _auth.currentUser!.uid;

  UserModel get user => _data();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
