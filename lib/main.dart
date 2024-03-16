import 'package:flutter/material.dart';
import 'package:quote/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

/// Navigation
/// HTTP Calls
/// from GO Quote
/// Parse JSON
/// Update UI

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // fontFamily: 'Roboto',
          ),
      // darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
