import 'package:flutter/material.dart';
import 'package:tasky_app/core/helper_function.dart/check_tablet_layout.dart';
import 'package:tasky_app/widgets/activity_chart.dart';

import 'package:tasky_app/widgets/dashboard_body_header.dart';
import 'package:tasky_app/widgets/dashboard_mobile_body_header.dart';
import 'package:tasky_app/widgets/monthly_mentors_section.dart';
import 'package:tasky_app/widgets/percent_indicator_section.dart';
import 'package:tasky_app/widgets/task_today_section.dart';
import 'package:tasky_app/widgets/upcoming_task_section.dart';
import 'package:tasky_app/widgets/week_calendar.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,required   this.scaffoldKey,
  });
final   GlobalKey<ScaffoldState>  scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
             checkTabletLayout(context: context)?const DashboardBodyHeader(): DashboardMobileBodyHeader(scaffoldKey:scaffoldKey! ,),
          SizedBox(height:  checkTabletLayout(context: context)? 20:32),
    Expanded(
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal:checkTabletLayout(context: context)?0: 24),
         child: const  Column(children: [     Expanded(
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
          ],
        ),
      )
    ]);
  }
}
