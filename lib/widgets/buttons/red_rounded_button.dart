import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../progress_indicators/white_circular_progress_indicator.dart';

class GreenRoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final bool isLoading;

  const GreenRoundedButton({
    this.onPressed,
    this.text,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color ?? kGreen, borderRadius: k32pxBorderRadius),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width ?? double.infinity,
          height: height ?? 50,
          child: isLoading
              ? const WhiteCircularProgressIndicator()
              : Text(
                  text ?? '',
                  style: theme.textTheme.subtitle1
                      ?.copyWith(color: textColor ?? kWhite),
                ),
        ),
      ),
    );
  }
}
