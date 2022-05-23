import 'package:flutter/material.dart';

import '../constants/styles.dart';

class CustomDialogService {
  void showCustomDialog(context, dialog) {
    showDialog(context: context, builder: (context) => dialog);
  }

  void showSuccessDialog(context, title, message, actions) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => CustomDialog(
        actions: actions,
        title: Text(title, style: kTitleTextStyle.copyWith(fontSize: 16)),
        content: Text(message,
            style: kSubtitleTextStyle.copyWith(fontSize: 14),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const CustomDialog({
    Key? key,
    this.title,
    this.content,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: k8pxBorderRadius),
      title: Center(child: title),
      actions: actions,
      content: content,
      backgroundColor: kWhite,
    );
  }
}
