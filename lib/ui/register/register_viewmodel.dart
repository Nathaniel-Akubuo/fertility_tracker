import 'package:fertility_tracker/app/app.locator.dart';
import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../constants/constants.dart';
import '../../services/auth_service.dart';

class RegisterViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();
  UserMode userMode = UserMode.period;
  String formattedDate = '';
  String email = '';
  String name = '';
  String password = '';
  String cycleLength = '';
  String averagePeriodLength = '';
  String date = '';
  DateTime? _lmp;

  void navigateToLogin() => _navigationService.navigateTo(Routes.loginView);

  void setUserMode(UserMode value) {
    userMode = value;
    notifyListeners();
  }

  Future<void> setDate(context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2017),
      lastDate: DateTime(2027),
    );
    if (date != null) {
      _lmp = date;
      this.date = groupListDayFormat.format(date);
      formattedDate = groupListDayFormat.format(date);
      notifyListeners();
    }
  }

  Future<void> register() async {
    if (cycleLength.isEmpty || averagePeriodLength.isEmpty || _lmp == null) {
      ToastService.showErrorToast(message: 'All fields are required');
      return;
    } else {
      setBusy(true);
      await _authService.createAccount(
        name: name,
        email: email,
        password: password,
        mode: userMode,
        cycleLength: int.parse(cycleLength),
        lmp: _lmp,
        averageNumberOfDays: int.parse(averagePeriodLength),
      );
      setBusy(false);
    }
  }

  String formatLMP() {
    if (_lmp == null) {
      return '';
    } else {
      return formatDate(_lmp!);
    }
  }
}
