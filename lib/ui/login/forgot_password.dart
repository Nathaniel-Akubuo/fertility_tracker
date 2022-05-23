import 'package:fertility_tracker/ui/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/styles.dart';
import '../../widgets/buttons/red_rounded_button.dart';
import '../register/widget/rounded_card_textfield.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          iconTheme: const IconThemeData(color: kBlack),
        ),
        body: SingleChildScrollView(
          padding: kMainPadding,
          child: Column(
            children: [
              verticalSpaceLarge,
              Image.asset('assets/logo.png', height: 68),
              verticalSpaceMedium,
              Text(
                'Forgot Your Password?',
                style: kSubtitleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Enter your email', style: kSubtitleTextStyle),
              verticalSpaceRegular,
              RoundedCardTextField(
                hint: 'Email',
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) => model.email = v,
                textInputAction: TextInputAction.next,
              ),
              verticalSpaceLarge,
              GreenRoundedButton(
                isLoading: model.isBusy,
                color: kRed,
                text: 'Continue',
                onPressed: () => model.resetPassword(),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
