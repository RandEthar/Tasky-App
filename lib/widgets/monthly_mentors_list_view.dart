import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/helper_function.dart/scroll_list.dart';
import 'package:tasky_app/core/models.dart/monthly_mentors_model.dart';
import 'package:tasky_app/core/utils/app_images.dart';

import 'package:tasky_app/widgets/monthly_mentors_list_item.dart';

class MonthlyMentorsListView extends StatefulWidget {
  const MonthlyMentorsListView({super.key});

  @override
  State<MonthlyMentorsListView> createState() => _MonthlyMentorsListViewState();
}

class _MonthlyMentorsListViewState extends State<MonthlyMentorsListView> {
  late ScrollController _scrollController;
  bool activeRight = true;
  bool activeLeft = false;
  @override
  void initState() {

    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
   
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header with arrows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Monthly Mentors',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    scrollLeft(scrollController: _scrollController);

                    setState(() {
                      activeLeft = true;
                      activeRight = false;
                    });
                  },
                  child: SvgPicture.asset(
                      activeLeft
                          ? Assets.imagesArrowLeftActive
                          : Assets.imagesArrowLeft,
                      height: 24),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    scrollRight(scrollController: _scrollController);
                    setState(() {
                      activeRight = true;
                      activeLeft = false;
                    });
                  },
                  child: SvgPicture.asset(
                      activeRight
                          ? Assets.imagesArrowRight
                          : Assets.imagesArrowRightInactive,
                      height: 24),
                )
              ],
            )
          ],
        ),

        const SizedBox(height: 16),

        // The list view
        SizedBox(
          height: 147,
          child: ListView.builder(
            shrinkWrap: true,
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount:  monthlyMentorsList.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.only(right: 32),
                child: IntrinsicWidth(child: MonthlyMentorsListItem(monthlyMentorsModel:  monthlyMentorsList[index],)),
              );
            },
          ),
        ),
      ],
    );
  }
}
