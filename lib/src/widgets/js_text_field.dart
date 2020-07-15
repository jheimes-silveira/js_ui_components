library js_text_field;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String labelText;
  final bool autofocus;
  final String errorText;
  final String titleText;
  final String helperText;
  final String counterText;
  final String auxiliaryText;
  final int maxLines;
  final int minLines;
  final int maxLength;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final Function prefixIconOnPressed;
  final Function suffixIconOnPressed;
  final bool enabled;
  final ValueChanged<String> onSubmitted;
  final TextInputAction textInputAction;
  final Function(String value) onChanged;
  final FocusNode focusNode;
  final EdgeInsets margin;
  final List<TextInputFormatter> inputFormatters;
  final InputDecoration decoration;

  const JsTextField({
    Key key,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.titleText,
    this.autofocus = false,
    this.errorText,
    this.auxiliaryText,
    this.prefixIcon,
    this.maxLength,
    this.suffixIcon,
    this.helperText,
    this.counterText,
    this.onChanged,
    this.enabled = true,
    this.prefixIconOnPressed,
    this.suffixIconOnPressed,
    this.textInputAction,
    this.onSubmitted,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatters,
    this.margin,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _getTitleText(context),
          TextField(
            inputFormatters: inputFormatters,
            minLines: minLines,
            keyboardType: keyboardType,
            autofocus: autofocus,
            maxLength: maxLength,
            controller: controller,
            obscureText: obscureText,
            onChanged: onChanged,
            focusNode: focusNode,
            enabled: enabled,
            onSubmitted: this.onSubmitted,
            textInputAction: this.textInputAction,
            maxLines: maxLines,
            decoration: decoration ??
                InputDecoration(
                  isDense: true,
                  errorText: errorText,
                  counterText: counterText,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  helperText: helperText,
                  suffixIcon: _buildSuffixIcon(context),
                  prefixIcon: _buildPrefixIcon(context),
                  border: OutlineInputBorder(),
                  errorMaxLines: 3,
                  helperMaxLines: 3,
                  labelText: labelText,
                ),
          ),
        ],
      ),
    );
  }

  GestureDetector _buildPrefixIcon(BuildContext context) {
    if (prefixIcon == null) return null;

    return GestureDetector(
      child: Icon(prefixIcon,
          color: errorText == null ? null : Theme.of(context).errorColor),
      onTap: prefixIconOnPressed,
    );
  }

  GestureDetector _buildSuffixIcon(BuildContext context) {
    if (suffixIcon == null) {
      return null;
    }
    return GestureDetector(
      child: Icon(suffixIcon,
          color: errorText == null ? null : Theme.of(context).errorColor),
      onTap: suffixIconOnPressed,
    );
  }

  Widget _getTitleText(BuildContext context) {
    if (titleText == null) {
      return Container();
    }

    return Text(
      titleText,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
