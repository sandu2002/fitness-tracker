import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Summary",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
