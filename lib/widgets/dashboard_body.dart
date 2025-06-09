


import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/activity_chart.dart';
import 'package:tasky_app/widgets/dashboard_body_header.dart';
import 'package:tasky_app/widgets/monthly_mentors_section.dart';

import 'package:tasky_app/widgets/percent_indicator_section.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
  children: [
   DashboardBodyHeader(),
  SizedBox(height: 20),
    Expanded(
      child: Row(
        children: [
        PercentIndicatorSection(),
         SizedBox(width: 36),
          Expanded(
            child: ActivityChart(),
          ),

        ],
      ),
    ),
     SizedBox(height: 20),
    MonthlyMentorsSection(),
  ],
);

  }
}