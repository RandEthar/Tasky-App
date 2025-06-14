import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';

import 'package:tasky_app/widgets/list_tile_mentors.dart';
import 'package:tasky_app/widgets/tasks_and_reviews.dart';

class MonthlyMentorsListItem extends StatelessWidget {
  const MonthlyMentorsListItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),child:  const Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [

       ListTileMentors(),
  SizedBox(height: 10),
    TasksAndReviews(),
      ],),
      
      
      );}
}
