


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';

import 'package:tasky_app/widgets/task_widget.dart';

class UpcomingTaskItem extends StatelessWidget {
  const UpcomingTaskItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),child:const TaskWidget(height: 110,width: 280,),);}}

