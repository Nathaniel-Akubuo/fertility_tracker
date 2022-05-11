import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../models/user_model.dart';
import '../../services/calculation_service.dart';

class FertilityViewModel extends StreamViewModel<DocumentSnapshot<UserModel>> {
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


  final groupSeparatorFormatter = DateFormat('d MMM');

  String get _uid => _auth.currentUser!.uid;

  UserModel get user => _data();


  String nextPeriod() {
    var lmp = user.lmp;
    if (lmp == null || user.averageNumberOfDays == null) return '';
    var value = CalculationService.calculateNextPeriod(
      lmp.toDate(),
      user.averageNumberOfDays!,
    );
    return groupSeparatorFormatter.format(value!);
  }

  String fertility() {
    var lmp = user.lmp;
    if (lmp == null) return '';
    var value = CalculationService.calculateOvulation(
      lmp.toDate(),
      user.averageNumberOfDays!,
    );
    var date = value?.subtract(const Duration(days: 3));
    return groupSeparatorFormatter.format(date!);
  }
}
