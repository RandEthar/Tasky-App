import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class TasksAndReviews extends StatelessWidget {
  const TasksAndReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
        Row(children: [
           SvgPicture.asset(Assets.imagesNote,
              height: 24,
              width: 24,
            ),const SizedBox(width: 8,),
            Text( '40 Task',
              style: TextStyles.medium14.copyWith(
                color: const Color(0x7FEBEDFA),
            ),)
        ],),
        const SizedBox(width: 44,),
           Row(children: [
           SvgPicture.asset(Assets.imagesStar,
              height: 24,
              width: 24,
            ),const SizedBox(width: 8,),
            Text( '4,7 (750 Reviews)',
              style: TextStyles.medium14,
            ),
        ],),


      ],
    );
  }
}