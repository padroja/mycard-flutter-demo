import 'package:demo_mycard/screens/mycard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCardApp());
}

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCardScreen(),
    );
  }
}
