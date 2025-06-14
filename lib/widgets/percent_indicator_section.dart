


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/percent_indicator.dart';

class PercentIndicatorSection extends StatelessWidget {
  const PercentIndicatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,  top: 20,  bottom: 22,right: 36),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text("Running Task", style: TextStyles.semiBold16(context)),
           const  SizedBox(height: 16),
            Text("65", style: TextStyles.semiBold32(context)),
                const  SizedBox(height: 16),
               Row(
         children: [
         const   PercentIndicator(),
          const   SizedBox(width: 16),
            Column(
           
              children: [
               Text("100", style: TextStyles.semiBold20(context)),
                   const  SizedBox(height: 4),
                      Text("Task", style: TextStyles.semiBold14(context).copyWith(
                         color: const Color(0x7FEBEDFA),
                      )),
              ],
            ),
         ],)
        ],
      ),
    );
  }
}