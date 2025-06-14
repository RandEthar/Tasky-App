import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/activity_chart.dart';

import 'package:tasky_app/widgets/dashboard_mobile_body_header.dart';
import 'package:tasky_app/widgets/monthly_mentors_section.dart';
import 'package:tasky_app/widgets/percent_Indicator_Section_mobile_layout.dart';
import 'package:tasky_app/widgets/task_today_section.dart';
import 'package:tasky_app/widgets/upcoming_task_section.dart';
import 'package:tasky_app/widgets/week_calendar.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardMobileBodyHeader(
              scaffoldKey: scaffoldKey,
            ),
            const SizedBox(height: 32),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    PercentIndicatorSectionMobileLayout(),
                    SizedBox(height: 32),
                    ActivityChart(),
                    SizedBox(height: 20),
                    MonthlyMentorsSection(),
                    SizedBox(height: 20),
                    UpcomingTaskSection(),
                    SizedBox(height: 20),
                    WeekCalendar(),
                    SizedBox(height: 20),
                    TaskTodaySection()
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
