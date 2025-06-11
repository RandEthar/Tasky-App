


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class WeekCalenderItem extends StatelessWidget {
  const WeekCalenderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(6),
      width:40 ,height: 72,
      decoration: BoxDecoration(
          color: const Color(0xff141522),
        borderRadius: BorderRadius.circular(22)

      ),child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text("T",style: TextStyles.semiBold12,)
           ,
         CircleAvatar(
            radius: 16,
            backgroundColor: AppColor.secondary,
            child:    Text("14",style: TextStyles.semiBold12.copyWith(
              color: Colors.white
            ),),
           )
        ],
      ),
    );
  }
}