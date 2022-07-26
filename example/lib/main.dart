import 'package:flutter/material.dart';
import 'package:pop_alert/pop_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pop Alert',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () => PopAlert.simpleAlert(
                context: context,
                title: 'Title goes here!',
                text: '...and text goes here!',
                button: 'OK',
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Simple Alert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () => PopAlert.iconAlert(
                context: context,
                icon: PopAlertIcon.success,
                title: 'Good job!',
                text: 'You clicked the button!',
                button: 'OK',
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Icon Alert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
