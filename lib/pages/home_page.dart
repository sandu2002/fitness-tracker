import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Side Menu
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),
            // Dashboard
            Expanded(
              flex: 9,
              child: SizedBox(
                child: Dashboard(),
              ),
            ),
            // Summary
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SummaryWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
