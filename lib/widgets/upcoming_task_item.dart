


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/slider_widget.dart';

import 'package:tasky_app/widgets/task_buttom_row.dart';

class UpcomingTaskItem extends StatelessWidget {
  const UpcomingTaskItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(Assets.imagesCreatingMobileDesign,  width: 280,
          height: 110,fit: BoxFit.fill,)),
           const SizedBox(height: 16,),
          Text(
            'Creating Mobile App Design',
            style: TextStyles.semiBold16),
               Text(
            'UI UX Design',
            style: TextStyles.medium12.copyWith(
            color: const Color(0x7FEBEDFA),
            )),
              const SizedBox(height: 16,),
             const SliderWidget(),
             
            const  TaskBottomRow()
        ],
      ),);}}