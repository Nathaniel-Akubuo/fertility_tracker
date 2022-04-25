import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? uid;
  int? averageCycleLength;
  int? averageNumberOfDays;
  UserMode? userMode;
  Timestamp? lmp;

  UserModel({
    this.name,
    this.uid,
    this.averageCycleLength,
    this.averageNumberOfDays,
    this.userMode,
    this.lmp,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'uid': uid,
        'averageCycleLength': averageCycleLength,
        'averageNumberOfDays': averageNumberOfDays,
        'userMode': _userModeToString(userMode),
        'lmp': lmp?.toDate().toString(),
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        name: map['name'] as String,
        uid: map['uid'] as String,
        averageCycleLength: map['averageCycleLength'] as int,
        averageNumberOfDays: map['averageNumberOfDays'] as int,
        userMode: _stringToUserMode(map['userMode']),
        lmp: map['lmp'] as Timestamp,
      );
}

String _userModeToString(UserMode? userMode) {
  if (userMode == UserMode.pregnancy) {
    return 'pregnancy';
  } else if (userMode == UserMode.period) {
    return 'period';
  } else if (userMode == UserMode.fertility) {
    return 'fertility';
  } else {
    return '';
  }
}

UserMode? _stringToUserMode(String? value) {
  if (value == 'pregnancy') {
    return UserMode.pregnancy;
  } else if (value == 'period') {
    return UserMode.period;
  } else if (value == 'fertility') {
    return UserMode.fertility;
  } else {
    return null;
  }
}

enum UserMode { pregnancy, period, fertility }
