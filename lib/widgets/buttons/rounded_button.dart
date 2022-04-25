import 'package:flutter/material.dart';

import '../../constants/ui_helpers.dart';
import '../progress_indicators/red_circular_progress_indicator.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final bool isLoading;
  final BorderRadiusGeometry? borderRadius;

  const RoundedButton({
    this.onPressed,
    this.leading,
    this.text,
    this.width,
    this.height,
    this.color,
    this.isLoading = false,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(4))),
      child: SizedBox(
        height: height ?? 58,
        width: width ?? double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: isLoading
              ? const RedCircularProgressIndicator()
              : Row(
                  children: [
                    leading != null
                        ? Row(
                            children: [
                              horizontalSpaceRegular,
                              leading!,
                              horizontalSpaceRegular
                            ],
                          )
                        : Container(),
                    Text(
                      text ?? '',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
