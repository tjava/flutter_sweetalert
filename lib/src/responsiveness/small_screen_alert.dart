import 'package:flutter/material.dart';
import 'package:pop_alert/src/animations/icon_animation.dart';
import 'package:pop_alert/src/constants/colors.dart';

class SmallScreenAlert extends StatefulWidget {
  final String type;
  final String? icon;
  final String title;
  final String? text;
  final String? button;
  const SmallScreenAlert({
    Key? key,
    required this.type,
    this.icon,
    required this.title,
    this.text,
    this.button,
  }) : super(key: key);

  @override
  State<SmallScreenAlert> createState() => _SmallScreenAlertState();
}

class _SmallScreenAlertState extends State<SmallScreenAlert>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
    );

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _simple({required String title, String? text, String? button}) {
    if (text == null) {
      return Container(
        height: 180,
        width: 320,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 18),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      button ?? 'OK',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: 180,
      width: 320,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),
          Text(
            title,
            style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Text(
              text,
              style: TextStyle(
                color: dark,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 18),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    button ?? 'OK',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _icon(
      {String? icon, required String title, String? text, String? button}) {
    if (text == null) {
      return Container(
        height: 260,
        width: 360,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            IconAnimation(icon: icon),
            const SizedBox(height: 25),
            Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 18),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      button ?? 'OK',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: 285,
      width: 380,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          IconAnimation(icon: icon),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Text(
              text,
              style: TextStyle(
                color: dark,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 18),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    button ?? 'OK',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 'simple':
        return Center(
          child: ScaleTransition(
            scale: scaleAnimation,
            child: _simple(
                title: widget.title, text: widget.text, button: widget.button),
          ),
        );
      case 'icon':
        return Center(
          child: ScaleTransition(
            scale: scaleAnimation,
            child: _icon(
                icon: widget.icon,
                title: widget.title,
                text: widget.text,
                button: widget.button),
          ),
        );
      default:
        return Center(
          child: ScaleTransition(
            scale: scaleAnimation,
            child: const Text('Unknown type'),
          ),
        );
    }
  }
}
