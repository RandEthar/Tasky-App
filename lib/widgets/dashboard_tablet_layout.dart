


import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/activity_chart.dart';
import 'package:tasky_app/widgets/custom_drawer.dart';
import 'package:tasky_app/widgets/dashboard_body_header.dart';
import 'package:tasky_app/widgets/monthly_mentors_section.dart';
import 'package:tasky_app/widgets/percent_indicator_section.dart';
import 'package:tasky_app/widgets/task_today_section.dart';
import 'package:tasky_app/widgets/upcoming_task_section.dart';
import 'package:tasky_app/widgets/week_calendar.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
     padding: EdgeInsets.symmetric(horizontal: 46, vertical: 64),
      child: Row(
        
        
        children: [
                  Expanded(flex: 1,
         
            child: CustomDrawer()),
            SizedBox(
              width: 20,
            ),
                 Expanded(
                    flex: 3,
                    child: CustomScrollView(
                      slivers:[
                        SliverFillRemaining(
                           hasScrollBody: false,
                         child:   Column(
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
                       SizedBox(height: 20),
                           WeekCalendar(),
                                       SizedBox(height: 20),
                                       TaskTodaySection()
                                ],
                              ),
                        )
                      ]
                    ),
                  ),
      
      ],),
    );
  }
}