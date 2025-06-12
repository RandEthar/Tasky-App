import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/active_week_calender_item.dart';
import 'package:tasky_app/widgets/in_active_week_calender_item.dart';

class WeekCalenderItem extends StatelessWidget {
  const WeekCalenderItem({super.key, required this.date, required this.active});
  final DateTime date;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return active
        ? ActiveWeekCalenderItem(
            date: date,
          )
        : InActiveWeekCalenderItem(
            date: date,
          );
  }
}
