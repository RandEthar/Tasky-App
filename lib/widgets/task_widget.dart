



import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/upcoming_task_mobel.dart';

import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/slider_widget.dart';
import 'package:tasky_app/widgets/task_buttom_row.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key, this.height, this.width, required this.upcomingTaskMobel,
  });
   final double? height;
     final double? width;
      final UpcomingTaskMobel upcomingTaskMobel;
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(upcomingTaskMobel.imagePath,fit: BoxFit.cover,height: height,
          width: width??double.infinity,)),
         const SizedBox(height: 16,),
        Text(
          upcomingTaskMobel.title,
          style: TextStyles.semiBold16(context)),
             Text(
         upcomingTaskMobel.subTitle,
          style: TextStyles.medium12(context).copyWith(
          color: const Color(0x7FEBEDFA),
          )),
            const SizedBox(height: 16,),
           const SliderWidget(),
           
            TaskBottomRow(upcomingTaskMobel:upcomingTaskMobel,)
      ],
    );
  }
}