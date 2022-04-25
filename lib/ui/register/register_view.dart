import 'package:fertility_tracker/constants/constants.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/services/toast_service.dart';
import 'package:fertility_tracker/ui/register/register_viewmodel.dart';
import 'package:fertility_tracker/ui/register/widget/rounded_card_textfield.dart';
import 'package:fertility_tracker/widgets/buttons/circular_button.dart';
import 'package:fertility_tracker/widgets/buttons/red_rounded_button.dart';
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

  void _listener() {
    currentPage = controller.page!.toInt();
  }

  void animateToPage() {
    controller.animateToPage(
      currentPage + 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kPurple,
        appBar: AppBar(
          backgroundColor: kPurple,
          elevation: 0,
        ),
        body: Padding(
          padding: kMainPadding,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: controller,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/logo.png', height: 68),
                      verticalSpaceSmall,
                      Text(
                        'Register',
                        style: kSubtitleTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Enter your email and set a password',
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      verticalSpaceMedium,
                      RoundedCardTextField(
                        hint: 'Email',
                        onChanged: (v) => model.email = v,
                        textInputAction: TextInputAction.next,
                      ),
                      verticalSpaceRegular,
                      RoundedCardTextField(
                        hint: 'Password',
                        onChanged: (v) => model.password = v,
                      ),
                      verticalSpaceLarge,
                      GreenRoundedButton(
                        text: 'Next',
                        onPressed: () {
                          if (emailRegExp.hasMatch(model.email) &&
                              model.password.length >= 6) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            animateToPage();
                          } else {
                            ToastService.showErrorToast(
                                message: 'Enter a valid email and password');
                          }
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'What would you like to use this application for?',
                        textAlign: TextAlign.center,
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpaceMedium,
                      CircularButton(
                        diameter: 70,
                        onTap: () => model.setUserMode(UserMode.period),
                        color: model.userMode == UserMode.period
                            ? kGreen
                            : Colors.white,
                        child: Icon(
                          FontAwesomeIcons.personPregnant,
                          size: 35,
                          color: model.userMode == UserMode.period
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      verticalSpaceTiny,
                      Text(
                        'Track periods',
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      verticalSpaceMedium,
                      CircularButton(
                        diameter: 70,
                        onTap: () => model.setUserMode(UserMode.fertility),
                        color: model.userMode == UserMode.fertility
                            ? kGreen
                            : Colors.white,
                        child: Icon(
                          FontAwesomeIcons.personPregnant,
                          color: model.userMode == UserMode.fertility
                              ? Colors.white
                              : Colors.black,
                          size: 35,
                        ),
                      ),
                      verticalSpaceTiny,
                      Text(
                        'Track ovulation',
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      verticalSpaceMedium,
                      CircularButton(
                        diameter: 70,
                        onTap: () => model.setUserMode(UserMode.pregnancy),
                        color: model.userMode == UserMode.pregnancy
                            ? kGreen
                            : Colors.white,
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
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      verticalSpaceLarge,
                      GreenRoundedButton(
                        text: 'Next',
                        isLoading: model.isBusy,
                        onPressed: animateToPage,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Almost there',
                        textAlign: TextAlign.center,
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpaceSmall,
                      Text('We just need to know a few things about you',
                          style:
                              kSubtitleTextStyle.copyWith(color: Colors.white)),
                      verticalSpaceLarge,
                      RoundedCardTextField(
                        hint: 'Cycle length',
                        onChanged: (v) => model.cycleLength = v,
                        textInputAction: TextInputAction.next,

                      ),
                      verticalSpaceRegular,
                      RoundedCardTextField(
                        hint: 'Average period length',
                        textInputAction: TextInputAction.next,

                        onChanged: (v) => model.averagePeriodLength = v,
                      ),
                      verticalSpaceRegular,
                      RoundedCardTextField(
                        readOnly: true,
                        controller: TextEditingController()..text = model.date,
                        hint: 'Date of last menstrual period',
                        onTap: () async => await model.setDate(context),
                      ),
                      verticalSpaceLarge,
                      GreenRoundedButton(
                        text: 'Register',
                        isLoading: model.isBusy,
                        onPressed: model.register,
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 20,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.white,
                    activeDotColor: kGreen,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => RegisterViewModel(),
    );
  }
}
