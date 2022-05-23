import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/toast_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class AuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  final _navigationService = locator<NavigationService>();
  final _users = FirebaseFirestore.instance.collection('users');

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      if (result.user != null) {
        _navigationService.clearStackAndShow(Routes.bottomNavView);
      }
    } catch (e) {
      ToastService.showErrorToast(message: e.toString());
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut().then(
        (value) => _navigationService.clearStackAndShow(Routes.loginView));
  }

  Future<bool> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      ToastService.showSuccessToast(
          message:
              'Password reset email has been sent. Check your inbox to reset your email');

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ToastService.showErrorToast(
          message:
              'No user found for this email address. Check the email and try again',
        );
      } else {
        ToastService.showErrorToast(message: e.message!);
      }

      return false;
    }
  }

  Future<void> createAccount({
    required String name,
    required String email,
    required String password,
    required UserMode mode,
    required int cycleLength,
    required int averageNumberOfDays,
    required DateTime? lmp,
  }) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        var user = UserModel(
          name: name,
          userMode: mode,
          averageCycleLength: cycleLength,
          uid: result.user!.uid,
          lmp: lmp == null ? null : Timestamp.fromDate(lmp),
          averageNumberOfDays: averageNumberOfDays,
          email: email,
          dateCreated: Timestamp.now(),
        );
        await _users.doc(user.uid).set(user.toMap());
        _navigationService.clearStackAndShow(Routes.bottomNavView);
      }
    } catch (e) {
      ToastService.showErrorToast(message: e.toString());
    }
  }
}
