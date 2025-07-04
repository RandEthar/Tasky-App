import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/upcoming_task_mobel.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/custom_text_button.dart';
import 'package:tasky_app/widgets/detail_task_item_list_view.dart';

import 'package:tasky_app/widgets/task_widget.dart';

class TaskTodaySection extends StatelessWidget {
  const TaskTodaySection({super.key});
     
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 21, left: 24, right: 24),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Task Today",
                style: TextStyles.semiBold14(context),
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 20,
                ),
                color: Colors.white,
                itemBuilder: (context) {
                  return [];
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TaskWidget(
          upcomingTaskMobel:  UpcomingTaskMobel(
    title: 'Creating Mobile App Design',
    subTitle: 'UI UX Design',
    imagePath: Assets.imagesCreatingMobileDesign,

    daysLeft: 3,
  ),
            height: 160,
          ),
          const Divider(
            height: 64,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Detail Task', style: TextStyles.semiBold16(context)),
              Text('UI UX Design',
                  style: TextStyles.medium12(context).copyWith(
                    color: const Color(0x7FEBEDFA),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const DetailTaskItemListView(),
          const SizedBox(
            height: 56,
          ),
         const CustomTextButton(),
          const SizedBox(
            height: 36,
          ),
        ],
      ),
    );
  }
}

