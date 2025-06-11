import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/activity_chart.dart';
import 'package:tasky_app/widgets/dashboard_body_header.dart';
import 'package:tasky_app/widgets/monthly_mentors_section.dart';

import 'package:tasky_app/widgets/percent_indicator_section.dart';
import 'package:tasky_app/widgets/upcoming_task_section.dart';
import 'package:tasky_app/widgets/week_calendar.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                            children: [
                  DashboardBodyHeader(),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      children: [
                        IntrinsicHeight(child: PercentIndicatorSection()),
                        SizedBox(width: 36),
                        Expanded(child: ActivityChart()),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  MonthlyMentorsSection(),
                  SizedBox(height: 20),
                  UpcomingTaskSection(),
                            ],
                          ),
                ),
                  SizedBox(width: 24,),
                  Expanded(
                  flex: 1,
                  child: Column(
                    
                            children: [
                 WeekCalendar()
                            ],
                          ),
                ),
              ],
            ))
      ],
    );
  }
}
