import 'package:fitness_tracker/widgets/activity_widget.dart';
import 'package:fitness_tracker/widgets/header_widget.dart';
import 'package:fitness_tracker/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(
              height: 15,
            ),
            ActivityWidget(),
            SizedBox(
              height: 15,
            ),
            LineChartCard(),
          ],
        ),
      ),
    );
  }
}
