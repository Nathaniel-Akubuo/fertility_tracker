import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static showSuccessToast({
    required String message,
    Toast? toastLength,
    double? fontSize,
    ToastGravity? gravity,
    Color? backgroundColor,
    Color? textColor,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      fontSize: fontSize,
      gravity: gravity,
      backgroundColor: Colors.green,
      textColor: textColor,
    );
  }

  static showErrorToast({
    required String message,
    Toast? toastLength,
    double? fontSize,
    ToastGravity? gravity,
    Color? backgroundColor,
    Color? textColor,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      fontSize: fontSize,
      gravity: gravity,
      backgroundColor: Colors.red,
      textColor: textColor,
    );
  }
}
