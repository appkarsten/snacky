import 'package:flutter/material.dart';
import 'package:snacky/snack/snack_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              color: Color(0xFFD9D9D9),
              fontSize: 14,
              letterSpacing: -0.5,
              height: 1.3),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 20,
            height: 1.3,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 24,
            height: 1.3,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
              color: Colors.white38, fontSize: 11, letterSpacing: -0.3),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: SnackApp(),
        ),
      ),
    );
  }
}
