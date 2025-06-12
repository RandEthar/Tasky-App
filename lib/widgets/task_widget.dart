



import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/slider_widget.dart';
import 'package:tasky_app/widgets/task_buttom_row.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key, this.height, this.width,
  });
   final double? height;
     final double? width;
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(Assets.imagesCreatingMobileDesign,fit: BoxFit.cover,height: height,
          width: width??double.infinity,)),
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
    );
  }
}