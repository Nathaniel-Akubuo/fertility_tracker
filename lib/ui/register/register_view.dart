import 'package:fertility_tracker/constants/constants.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/toast_service.dart';
import 'package:fertility_tracker/ui/register/register_viewmodel.dart';
import 'package:fertility_tracker/ui/register/widget/rounded_card_textfield.dart';
import 'package:fertility_tracker/widgets/buttons/circular_button.dart';
import 'package:fertility_tracker/widgets/buttons/red_rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var controller = PageController();
  var dateController = TextEditingController();
  var currentPage = 0;

  @override
  void initState() {
    controller.addListener(_listener);
    super.initState();
  }

  void _listener() => setState(() => currentPage = controller.page!.toInt());

  void animateToPage() {
    controller.animateToPage(
      currentPage + 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void animateToPreviousPage() {
    controller.animateToPage(
      currentPage - 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: kMainPadding,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        verticalSpaceLarge,
                        verticalSpaceLarge,
                        Image.asset('assets/logo.png', height: 68),
                        verticalSpaceSmall,
                        Text(
                          'Register',
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
                          hint: 'Name',
                          onChanged: (v) => model.name = v,
                          textInputAction: TextInputAction.next,
                        ),
                        verticalSpaceRegular,
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
                        verticalSpaceLarge,
                        GreenRoundedButton(
                          color: kRed,
                          text: 'Next',
                          onPressed: () {
                            if (emailRegExp.hasMatch(model.email) &&
                                model.password.length >= 6 &&
                                model.name.isNotEmpty) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              animateToPage();
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
                              text: 'Already have an account? ',
                              style: kSubtitleTextStyle.copyWith(fontSize: 14),
                              children: [
                                TextSpan(
                                  text: 'Log in',
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        verticalSpaceLarge,
                        verticalSpaceLarge,
                        Text(
                          'What would you like to use this application for?',
                          textAlign: TextAlign.center,
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpaceMedium,
                        CircularButton(
                          diameter: 70,
                          onTap: () => model.setUserMode(UserMode.period),
                          color: model.userMode == UserMode.period
                              ? kRed
                              : Colors.grey[300],
                          child: Image.asset(
                            'assets/sanitary-pad.png',
                            color: model.userMode == UserMode.period
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        verticalSpaceTiny,
                        Text(
                          'Track periods',
                          style: kSubtitleTextStyle.copyWith(fontSize: 16),
                        ),
                        verticalSpaceMedium,
                        CircularButton(
                          diameter: 70,
                          onTap: () => model.setUserMode(UserMode.fertility),
                          color: model.userMode == UserMode.fertility
                              ? kRed
                              : Colors.grey[300],
                          child: Image.asset(
                            'assets/menstrual-cycle.png',
                            color: model.userMode == UserMode.fertility
                                ? Colors.white
                                : Colors.black,
                            height: 35,
                          ),
                        ),
                        verticalSpaceTiny,
                        Text(
                          'Track ovulation',
                          style: kSubtitleTextStyle.copyWith(fontSize: 16),
                        ),
                        verticalSpaceMedium,
                        CircularButton(
                          diameter: 70,
                          onTap: () => model.setUserMode(UserMode.pregnancy),
                          color: model.userMode == UserMode.pregnancy
                              ? kRed
                              : Colors.grey[300],
                          child: Icon(
                            FontAwesomeIcons.personPregnant,
                            color: model.userMode == UserMode.pregnancy
                                ? Colors.white
                                : Colors.black,
                            size: 35,
                          ),
                        ),
                        verticalSpaceTiny,
                        Text(
                          'Track pregnancy week by week',
                          style: kSubtitleTextStyle.copyWith(fontSize: 16),
                        ),
                        verticalSpaceLarge,
                        GreenRoundedButton(
                          color: kRed,
                          text: 'Next',
                          isLoading: model.isBusy,
                          onPressed: animateToPage,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        verticalSpaceLarge,
                        verticalSpaceLarge,
                        Text(
                          'Almost there',
                          textAlign: TextAlign.center,
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpaceSmall,
                        Text(
                          'We just need to know a few things about you',
                          style: kSubtitleTextStyle,
                        ),
                        verticalSpaceLarge,
                        RoundedCardTextField(
                          hint: 'Cycle length',
                          keyboardType: TextInputType.number,
                          onChanged: (v) => model.cycleLength = v,
                          textInputAction: TextInputAction.next,
                        ),
                        verticalSpaceRegular,
                        RoundedCardTextField(
                          hint: 'Average period length',
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          onChanged: (v) => model.averagePeriodLength = v,
                        ),
                        verticalSpaceRegular,
                        RoundedCardTextField(
                          readOnly: true,
                          controller: TextEditingController()
                            ..text = model.formatLMP(),
                          hint: 'Date of last menstrual period',
                          onTap: () async => await model.setDate(context),
                        ),
                        verticalSpaceLarge,
                        GreenRoundedButton(
                          color: kRed,
                          text: 'Register',
                          isLoading: model.isBusy,
                          onPressed: model.register,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 20,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: kRed,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              Positioned(
                top: kToolbarHeight - 20,
                left: 0,
                child: Visibility(
                  visible: currentPage != 0,
                  child: CircularButton(
                    onTap: () {
                      if (model.isBusy) return;
                      animateToPreviousPage();
                    },
                    child:
                        const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => RegisterViewModel(),
    );
  }
}
