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


  const RoundedCardTextField({
    Key? key,
    required this.hint,
    this.onChanged,
    this.onTap,
    this.validator,
    this.initialValue,
    this.readOnly = false,
    this.controller,
    this.textInputAction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: TextFormField(
          controller: controller,
          initialValue: initialValue,
          maxLines: null,
          onTap: onTap,
          readOnly: readOnly,
          onChanged: onChanged,
          cursorColor: kGreen,
          validator: validator,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: kSubtitleTextStyle.copyWith(color: Colors.grey),
          ),
        ),
      ),
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    );
  }
}
