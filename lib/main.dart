import 'package:fitness_buddy/app.dart';
import 'package:fitness_buddy/screens/signin.dart';
import 'package:fitness_buddy/screens/signup.dart';
import 'package:fitness_buddy/screens/username.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasicApp());
}

class BasicApp extends StatefulWidget {
  const BasicApp({Key? key}) : super(key: key);

  @override
  _BasicAppState createState() => _BasicAppState();
}

class _BasicAppState extends State<BasicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const App(),
    );
  }
}
