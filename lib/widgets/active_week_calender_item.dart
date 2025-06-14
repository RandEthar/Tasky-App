






import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class ActiveWeekCalenderItem extends StatelessWidget {
  const ActiveWeekCalenderItem({super.key, required this.date});
final DateTime date;
  @override
  Widget build(BuildContext context) {


    String dayLetter=DateFormat.E().format(date)[0];
      String dayNumber=date.day.toString();
      log(dayNumber);
    return AnimatedContainer(
      duration:const Duration(milliseconds: 300),
      curve: Curves.bounceIn,
      padding:const EdgeInsets.all(6),
      width:40 ,height: 72,
      decoration: BoxDecoration(
          color: const Color(0xff141522),
        borderRadius: BorderRadius.circular(22)

      ),child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(dayLetter,style: TextStyles.medium12(context),)
           ,
         CircleAvatar(
            radius: 16,
            backgroundColor: AppColor.secondary,
            child:    Text(dayNumber,style: TextStyles.medium12(context).copyWith(
              color: Colors.white
            ),),
           )
        ],
      ),
    );
  }
}

