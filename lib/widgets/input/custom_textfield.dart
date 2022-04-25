import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/styles.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final double? height;
  final Color? textColor;
  final String? hintText;
  final bool autoFocus;
  final bool isPasswordTextField;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldSetter<String>? onSaved;
  ValueChanged<String>? onFieldSubmitted;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final String? prefixText;
  bool obscureText;
  bool? enabled;
  String? initialValue;
  final Color? fillColor;
  bool? autocorrect;
  TextCapitalization? textCapitalization;

  CustomTextFormField.regular({
    Key? key,
    this.controller,
    this.onChanged,
    this.autovalidateMode,
    this.textColor,
    this.hintText,
    this.autoFocus = false,
    this.height,
    this.onSaved,
    this.onFieldSubmitted,
    this.isPasswordTextField = false,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.prefixIcon,
    this.labelText,
    this.obscureText = false,
    this.floatingLabelBehavior,
    this.prefixText,
    this.validator,
    this.enabled,
    this.initialValue,
    this.fillColor,
    this.autocorrect,
    this.textCapitalization,
  }) : super(key: key);

  CustomTextFormField.password({
    Key? key,
    this.controller,
    this.onChanged,
    this.height,
    this.autovalidateMode,
    this.prefixIcon,
    this.textColor,
    this.hintText,
    this.autoFocus = false,
    this.floatingLabelBehavior,
    this.isPasswordTextField = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.inputFormatters,
    this.onSaved,
    this.onFieldSubmitted,
    this.labelText,
    this.obscureText = true,
    this.prefixText,
    this.validator,
    this.enabled,
    this.initialValue,
    this.fillColor,
    this.autocorrect,
    this.textCapitalization,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        enabled: widget.enabled,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        autovalidateMode: widget.autovalidateMode,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        cursorColor: kRed,
        style:
            kSubtitleTextStyle.copyWith(color: widget.textColor ?? kTextColor),
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        autocorrect: widget.autocorrect ?? false,
        controller: widget.controller,
        initialValue: widget.initialValue,
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        validator: widget.validator,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          prefixText: widget.prefixText,
          prefixStyle: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
          floatingLabelBehavior: widget.floatingLabelBehavior,
          prefixIcon: widget.prefixIcon,
          labelText: widget.labelText,
          labelStyle: const TextStyle(fontSize: 15, color: Colors.grey),
          enabledBorder: const OutlineInputBorder(
            borderRadius: k32pxBorderRadius,
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kRed),
            borderRadius: k32pxBorderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.fillColor ?? Colors.grey),
            borderRadius: k32pxBorderRadius,
          ),
          hintText: widget.hintText,
          hintStyle: kSubtitleTextStyle.copyWith(
              color: Colors.grey, fontWeight: FontWeight.w400),
          errorStyle:
              kSubtitleTextStyle.copyWith(color: Colors.red, fontSize: 12),
          suffixIcon: widget.isPasswordTextField
              ? GestureDetector(
                  child: widget.obscureText
                      ? const Icon(Icons.visibility, color: kRed)
                      : Icon(Icons.visibility_off, color: Colors.grey[200]!),
                  onTap: () =>
                      setState(() => widget.obscureText = !widget.obscureText),
                )
              : null,
        ),
      ),
    );
  }
}
