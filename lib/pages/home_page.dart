import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';

import 'package:fitness_tracker/widgets/summary_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: SideMenu(),
            )
          : null,
      endDrawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            // Side Menu
            if (isDesktop)
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
            if (isDesktop)
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
