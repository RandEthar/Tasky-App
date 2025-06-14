


import 'package:flutter/material.dart';

import 'package:tasky_app/widgets/activity_chart.dart';


import 'package:tasky_app/widgets/monthly_mentors_section.dart';
import 'package:tasky_app/widgets/percent_indicator_section.dart';
import 'package:tasky_app/widgets/task_today_section.dart';
import 'package:tasky_app/widgets/upcoming_task_section.dart';
import 'package:tasky_app/widgets/week_calendar.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Expanded(
           child: Column(children: [  
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
                  SizedBox(height: 20),
                   WeekCalendar(),
                   SizedBox(height: 20),
                  TaskTodaySection()],),
         ),
      )
    ]);
  }
}
