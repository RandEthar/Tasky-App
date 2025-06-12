import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/detail_task_item.dart';

class DetailTaskItemListView extends StatelessWidget {
  const DetailTaskItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
  
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: DetailTaskItem(numberTask: index+1,),
      );
    });
  }
}
