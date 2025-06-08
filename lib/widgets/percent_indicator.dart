


import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tasky_app/core/utils/app_color.dart';

import 'package:tasky_app/core/utils/app_styles.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircularPercentIndicator(
                  radius: 34,
                  lineWidth: 3,
                  animation: true,
                animationDuration: 800,
                   percent:.65,
                  center: Text("65%",style: TextStyles.medium18,),
                  progressColor:AppColor.secondary,
                  backgroundColor:Colors.white12,
                  circularStrokeCap: CircularStrokeCap.round,
                  
                );
  }
}