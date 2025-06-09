





import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/widgets/activity_chart_header.dart';

class ActivityChart extends StatelessWidget {
  const ActivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ActivityChartHeader()
        ],
      ),
    );
  }
}





















