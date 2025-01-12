import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive Fitness Tracker",
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      home: HomePage(),
    );
  }
}