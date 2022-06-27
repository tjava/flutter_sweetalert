import 'package:flutter/material.dart';
import 'package:pop_alert/src/responsiveness/large_screen_alert.dart';
import 'package:pop_alert/src/responsiveness/medium_screen_alert.dart';
import 'package:pop_alert/src/responsiveness/responsiveness.dart';
import 'package:pop_alert/src/responsiveness/small_screen_alert.dart';

class Layout extends StatelessWidget {
  final String? type;
  final String? icon;
  final String? title;
  final String? text;
  final String? button;

  const Layout({
    Key? key,
    required this.type,
    this.icon,
    required this.title,
    this.text,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreenAlert(
        type: type,
        icon: icon,
        title: title,
        text: text,
        button: button,
      ),
      mediumScreen: MediumScreenAlert(
        type: type,
        icon: icon,
        title: title,
        text: text,
        button: button,
      ),
      smallScreen: SmallScreenAlert(
        type: type,
        icon: icon,
        title: title,
        text: text,
        button: button,
      ),
    );
  }
}
