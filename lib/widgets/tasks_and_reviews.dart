import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/models.dart/monthly_mentors_model.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class TasksAndReviews extends StatelessWidget {
  const TasksAndReviews({super.key, required this.monthlyMentorsModel});
  final MonthlyMentorsModel monthlyMentorsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.imagesNote,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${monthlyMentorsModel.numberOfReviews} Task',
              style: TextStyles.medium14(context).copyWith(
                color: const Color(0x7FEBEDFA),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 44,
        ),
        Row(
          children: [
            SvgPicture.asset(
              Assets.imagesStar,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${monthlyMentorsModel.rating} (${monthlyMentorsModel.numberOfReviews} Reviews)',
              style: TextStyles.medium14(context),
            ),
          ],
        ),
      ],
    );
  }
}
