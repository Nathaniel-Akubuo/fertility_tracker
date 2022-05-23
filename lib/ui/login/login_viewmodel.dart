import 'package:fertility_tracker/app/app.router.dart';
import 'package:fertility_tracker/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/toast_service.dart';

class LoginViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  String email = '';
  String password = '';

  Future<void> login() async {
    if (email.isEmpty || password.isEmpty) {
      ToastService.showErrorToast(message: 'All fields are required');
      return;
    } else {
      setBusy(true);
      await _authService.login(
        email: email,
        password: password,
      );
      setBusy(false);
    }
  }

  Future<void> resetPassword() async {
    setBusy(true);
    var value = await _authService.resetPassword(email);
    setBusy(false);
    if (value) _navigationService.back();
  }

  void navigateToForgotPassword() =>
      _navigationService.navigateTo(Routes.forgotPasswordView);

  void navigateToLogin() => _navigationService.navigateTo(Routes.registerView);
}
