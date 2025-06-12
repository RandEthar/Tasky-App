


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class DetailTaskItem extends StatelessWidget {
  const DetailTaskItem({
    super.key, required this.numberTask,
  });
  final int numberTask;

  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
     Container(
      height: 36,width: 36,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(10)
      ),child: Center(
        child: Text(numberTask.toString(),style:      TextStyles.semiBold14.copyWith(
          color: Colors.black
        )),
      ),
     )
      ,const SizedBox(width: 12,),
      
      Text(
    'Understanding the tools in Figma',
    style: TextStyles.medium14),
    ],);
  }
}