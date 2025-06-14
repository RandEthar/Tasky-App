


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';

import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/percent_indicator.dart';
class PercentIndicatorSectionMobileLayout extends StatelessWidget {
  const PercentIndicatorSectionMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
     
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Text("Running Task", style: TextStyles.semiBold16(context)),
          const  SizedBox(height: 20),
                Text("65", style: TextStyles.semiBold32(context)),
                    const  SizedBox(height: 16),
                
            ],
            
          ),SizedBox(width: 43,)

            , Row(
                            
               children: [
                       const   PercentIndicator(),
                           const   SizedBox(width: 20),
               Column(
                children: [
                   Text("100", style: TextStyles.semiBold20(context)),
                    const  SizedBox(height: 4),
                       Text("Task", style: TextStyles.semiBold14(context).copyWith(
                          color: const Color(0x7FEBEDFA),
                       )),
                ],
               )
               ],
             )
        ],
      ),
    );
  }
}