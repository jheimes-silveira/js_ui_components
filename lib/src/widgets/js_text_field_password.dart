import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text_field.dart';

class JsTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final bool autofocus;
  final String errorText;
  final String helperText;
  final bool enabled;
  final String counterText;
  final String auxiliaryText;
  final Function(String value) onChanged;
  final ValueChanged<String> onSubmitted;
  final TextInputAction textInputAction;
  final String titleText;
  final FocusNode focusNode;
  final InputDecoration decoration;

  const JsTextFieldPassword({
    Key key,
    this.controller,
    this.titleText,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.autofocus = false,
    this.errorText,
    this.helperText,
    this.enabled,
    this.counterText,
    this.auxiliaryText,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    this.focusNode,
    this.decoration,
  }) : super(key: key);

  @override
  _JsTextFieldPasswordState createState() => _JsTextFieldPasswordState();
}

class _JsTextFieldPasswordState extends State<JsTextFieldPassword> {
  IconData _suffixIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return JsTextField(
      controller: widget.controller,
      obscureText: _suffixIcon == Icons.visibility,
      keyboardType: widget.keyboardType,
      decoration: widget.decoration,
      labelText: widget.labelText,
      titleText: widget.titleText,
      autofocus: widget.autofocus,
      errorText: widget.errorText,
      helperText: widget.helperText,
      enabled: widget.enabled,
      counterText: widget.counterText,
      auxiliaryText: widget.auxiliaryText,
      focusNode: widget.focusNode,
      suffixIcon: _suffixIcon,
      onSubmitted: widget.onSubmitted,
      textInputAction: widget.textInputAction,
      suffixIconOnPressed: _suffixIconOnPressed,
      onChanged: widget.onChanged,
    );
  }

  _suffixIconOnPressed() {
    if (_suffixIcon == Icons.visibility) {
      setState(() {
        _suffixIcon = Icons.visibility_off;
      });

      return;
    }

    setState(() {
      _suffixIcon = Icons.visibility;
    });
  }
}
