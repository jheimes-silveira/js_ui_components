import 'package:flutter/material.dart';

import '../../js_ui_components.dart';

class JsDialog {
  static Future showBasicAlert({
    required BuildContext context,
    required String content,
    bool? useRootNavigator,
    String? title,
    String? textPositiveButton,
    String? textNegativeButton,
    Function(BuildContext context)? onPressedPositiveButton,
    Function(BuildContext context)? onPressedNegativeButton,
  }) async {
    return await showDialog(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title == null ? null : Text(title),
          content: Text(content),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (onPressedNegativeButton != null)
                  JsButton(
                    text: textNegativeButton ?? "Fechar",
                    type: JsButtonType.text,
                    onPressed: () {
                      onPressedNegativeButton(context);
                    },
                  ),
                if (onPressedPositiveButton != null)
                  JsButton(
                    text: textPositiveButton ?? "Ok",
                    type: JsButtonType.text,
                    onPressed: () {
                      onPressedPositiveButton(context);
                    },
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
