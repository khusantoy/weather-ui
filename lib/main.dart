import 'package:flutter/material.dart';
import 'package:weather_ui/screens/main_screen.dart';
import 'package:weather_ui/screens/seven_days_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
