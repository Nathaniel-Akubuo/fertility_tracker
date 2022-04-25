import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kRed = Color(0xffCD0000);
const kPurple = Color(0xff493AC8);
const kBlue = Color(0xff4E8EFF);
const kYellow = Color(0xffFDA30C);
const kGreen = Color(0xff19BC9B); // primary
const kWhite = Color(0xffFFFFFF);
const kBlack = Color(0xff000000);
const kLightGrey = Color(0xFFF6F6F6);
const kGrey = Color(0xFFFAFAFA);
const kTextFieldGrey = Color(0xFFE0E0E0);
const kIconGrey = Color(0xFFB4BAC5);
const kTextColor = kBlack;
const kRedSwatch = MaterialColor(
  0xffCD0000,
  <int, Color>{
    50: kRed,
    100: kRed,
    200: kRed,
    300: kRed,
    400: kRed,
    500: kRed,
    600: kRed,
    700: kRed,
    800: kRed,
    900: kRed,
  },
);

//TEXT-STYLES
TextStyle kTitleTextStyle = GoogleFonts.poppins(
    color: kTextColor, fontSize: 28, fontWeight: FontWeight.w600);
TextStyle kSubtitleTextStyle =
GoogleFonts.poppins(color: kTextColor, fontSize: 14);

TextStyle kAppBarTextStyle = kSubtitleTextStyle.copyWith(
    fontSize: 18, fontWeight: FontWeight.w600, color: kWhite);

TextStyle kButtonTextStyle = GoogleFonts.poppins(color: kWhite, fontSize: 14);

// PADDING
const kMainPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
const k4pxPadding = EdgeInsets.symmetric(horizontal: 4, vertical: 4);
const k8pxPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 8);
const k16pxPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 16);

// DECORATIONS
const kRoundedTopBorder = BorderRadius.vertical(top: Radius.circular(24));
const k8pxRoundedBottomBorder = BorderRadius.vertical(bottom: Radius.circular(8));
const k32pxBorderRadius = BorderRadius.all(Radius.circular(32));
const k24pxBorderRadius = BorderRadius.all(Radius.circular(24));
const k16pxBorderRadius = BorderRadius.all(Radius.circular(16));
const k8pxBorderRadius = BorderRadius.all(Radius.circular(8));
const kSentMessageBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(16),
  bottomLeft: Radius.circular(16),
  topLeft: Radius.circular(16),
);
const kReceivedMessageBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(16),
  bottomLeft: Radius.circular(16),
  topRight: Radius.circular(16),
);
const k8pxNoLeft = BorderRadius.only(
  topRight: Radius.circular(8),
  bottomLeft: Radius.circular(8),
  bottomRight: Radius.circular(8),
);
const k8pxNoRight = BorderRadius.only(
  topLeft: Radius.circular(8),
  bottomLeft: Radius.circular(8),
  bottomRight: Radius.circular(8),
);

// HORIZONTAL-SPACING
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 15.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

// VERTICAL-SPACING
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 15.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
