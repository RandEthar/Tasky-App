


import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/upcoming_task_mobel.dart';
import 'package:tasky_app/widgets/upcoming_task_item.dart';

class UpcomingTaskListView extends StatelessWidget {
  const UpcomingTaskListView({
    super.key, required this.scrollController,
  });
   final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 340,
  child: ListView.builder(
    controller: scrollController,
    scrollDirection: Axis.horizontal,
    itemCount:upcomingTaskList.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const  EdgeInsets.only(right: 32),
        child: IntrinsicWidth(child: UpcomingTaskItem(upcomingTaskMobel: upcomingTaskList[index],)),
      );
    },
  ),
);

  }
}