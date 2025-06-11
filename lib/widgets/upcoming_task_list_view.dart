


import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/upcoming_task_item.dart';

class UpcomingTaskListView extends StatelessWidget {
  const UpcomingTaskListView({
    super.key, required this.scrollController,
  });
   final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 317,
      child: ListView.builder(
        controller: scrollController,
       scrollDirection: Axis.horizontal,
        itemCount: 5,
     
       itemBuilder: (context, index) {
        return  const Padding(
          padding:  EdgeInsets.only(right: 32),
          child:IntrinsicWidth(child:UpcomingTaskItem()),
        );
      },),
    );
  }
}