import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class CircularButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final double? diameter;
  final Color? color;
  final Widget? child;

  const CircularButton({
    Key? key,
    this.onTap,
    this.padding,
    this.diameter,
    this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        height: diameter ?? 50,
        width: diameter ?? 50,
        child: child,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color ?? kRed),
      ),
    );
  }
}
