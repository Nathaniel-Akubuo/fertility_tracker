import 'package:fertility_tracker/ui/login/login_viewmodel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constants.dart';
import '../../constants/styles.dart';
import '../../services/toast_service.dart';
import '../../widgets/buttons/red_rounded_button.dart';
import '../register/widget/rounded_card_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: kMainPadding,
          child: Column(
            children: [
              verticalSpaceLarge,
              verticalSpaceLarge,
              Image.asset('assets/logo.png', height: 68),
              verticalSpaceSmall,
              Text(
                'Login',
                style: kSubtitleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Enter your email and set a password',
                style: kSubtitleTextStyle,
              ),
              verticalSpaceMedium,
              RoundedCardTextField(
                hint: 'Email',
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) => model.email = v,
                textInputAction: TextInputAction.next,
              ),
              verticalSpaceRegular,
              RoundedCardTextField.password(
                hint: 'Password',
                onChanged: (v) => model.password = v,
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: model.navigateToForgotPassword,
                  child: Text(
                    'Forgot Password?',
                    style: kSubtitleTextStyle.copyWith(
                        color: kRed, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              verticalSpaceLarge,
              GreenRoundedButton(
                color: kRed,
                text: 'Login',
                onPressed: () {
                  if (emailRegExp.hasMatch(model.email) &&
                      model.password.length >= 6) {
                    FocusManager.instance.primaryFocus?.unfocus();
                   model.login();
                  } else {
                    ToastService.showErrorToast(
                        message: 'Enter valid credentials');
                  }
                },
              ),
              verticalSpaceSmall,
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: kSubtitleTextStyle.copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: 'Register',
                        recognizer: TapGestureRecognizer()
                          ..onTap = model.navigateToLogin,
                        style: kSubtitleTextStyle.copyWith(
                          fontSize: 14,
                          color: kRed,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
