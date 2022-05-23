import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class RoundedCardTextField extends StatelessWidget {
  final String hint;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final bool readOnly;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final TextInputType? keyboardType;

  const RoundedCardTextField({
    Key? key,
    required this.hint,
    this.onChanged,
    this.onTap,
    this.validator,
    this.initialValue,
    this.readOnly = false,
    this.controller,
    this.textInputAction,
    this.obscureText = false,
    this.keyboardType,
  }) : super(key: key);

  const RoundedCardTextField.password({
    Key? key,
    this.controller,
    this.onChanged,
    this.textInputAction,
    this.obscureText = true,
    this.validator,
    this.initialValue,
    this.onTap,
    this.readOnly = false,
    required this.hint,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        initialValue: initialValue,
        onTap: onTap,
        readOnly: readOnly,
        style: kSubtitleTextStyle.copyWith(fontSize: 16),
        onChanged: onChanged,
        cursorColor: kRed,
        validator: validator,
        textInputAction: textInputAction,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: hint,
          hintStyle: kSubtitleTextStyle.copyWith(color: Colors.grey),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
