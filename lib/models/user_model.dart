import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? email;
  String? uid;
  int? averageCycleLength;
  int? averageNumberOfDays;
  UserMode? userMode;
  Timestamp? lmp;
  Timestamp? dueDate;
  Timestamp? ovulationDate;
  Timestamp? nextPeriod;
  Timestamp? dateCreated;

  UserModel({
    this.name,
    this.email,
    this.uid,
    this.averageCycleLength,
    this.averageNumberOfDays,
    this.userMode,
    this.lmp,
    this.dueDate,
    this.ovulationDate,
    this.nextPeriod,
    this.dateCreated,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'uid': uid,
        'averageCycleLength': averageCycleLength,
        'averageNumberOfDays': averageNumberOfDays,
        'userMode': _userModeToString(userMode),
        'lmp': lmp,
        'dueDate': dueDate,
        'ovulationDate': ovulationDate,
        'nextPeriod': nextPeriod,
        'dateCreated': dateCreated,
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        name: map['name'],
        email: map['email'],
        uid: map['uid'],
        averageCycleLength: map['averageCycleLength'],
        averageNumberOfDays: map['averageNumberOfDays'],
        userMode: _stringToUserMode(map['userMode']),
        lmp: map['lmp'],
        dueDate: map['dueDate'],
        ovulationDate: map['ovulationDate'],
        nextPeriod: map['nextPeriod'],
        dateCreated: map['dateCreated'],
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
