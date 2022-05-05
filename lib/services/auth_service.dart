import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/models/user_model.dart';
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
  }) async {}

  Future<void> createAccount({
    required String name,
    required String email,
    required String password,
    required UserMode mode,
    required int cycleLength,
    required int averageNumberOfDays,
    required DateTime? lmp,
  }) async {
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

      );
      await _users.doc(user.uid).set(user.toMap());
      _navigationService.navigateTo(Routes.bottomNavView);
    }
  }



}
