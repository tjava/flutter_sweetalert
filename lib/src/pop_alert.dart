import 'package:flutter/material.dart';
import 'package:pop_alert/src/layout.dart';

class PopAlert {
  static void simpleAlert({
    required context,
    required String title,
    String? text,
    String? button,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Layout(
        type: 'simple',
        title: title,
        text: text,
        button: button,
      ),
    );
  }

  static void iconAlert({
    required context,
    required String title,
    required String icon,
    String? text,
    String? button,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Layout(
        type: 'icon',
        icon: icon,
        title: title,
        text: text,
        button: button,
      ),
    );
  }
}

class PopAlertIcon {
  static const success = 'packages/pop_alert/assets/animations/success.json';
  static const failed = 'packages/pop_alert/assets/animations/failed.json';
  static const info = 'packages/pop_alert/assets/animations/info.json';
  static const warning = 'packages/pop_alert/assets/animations/warning.json';
  static const searching =
      'packages/pop_alert/assets/animations/searching.json';
}
