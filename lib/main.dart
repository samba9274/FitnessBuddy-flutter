import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FitnessBuddy',
      home: Scaffold(
        body: Center(
          child: Text('Welcome to FitnessBuddy'),
        ),
      ),
    );
  }
}
