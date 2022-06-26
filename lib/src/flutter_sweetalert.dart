import 'package:flutter/material.dart';
import 'package:flutter_sweetalert/src/layout.dart';

class FlutterSweetalert {
  const FlutterSweetalert();

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
