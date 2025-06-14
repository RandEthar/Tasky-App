import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:tasky_app/core/helper_function.dart/scroll_list.dart';

import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

import 'package:tasky_app/widgets/week_calender_listview.dart';

class WeekCalendar extends StatefulWidget {
  const WeekCalendar({super.key});

  @override
  State<WeekCalendar> createState() => _WeekCalendarState();
}

class _WeekCalendarState extends State<WeekCalendar> {
  late ScrollController controller;

  bool isScrollLeft = false;
  bool isScrollRight = true;

  @override
  void initState() {

    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {

    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    DateTime today=DateTime.now();


    int totalDayinMonth=DateTime(today.year,today.month+1,0).day;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    scrollLeft(scrollController: controller);
                    setState(() {
                      isScrollLeft = true;
                      isScrollRight = false;
                    });
                  },
                  child: SvgPicture.asset(isScrollLeft
                      ? Assets.imagesArrowLeftActive
                      : Assets.imagesArrowLeft)),
              Text(
                 DateFormat.yMMMM().format(today),
                style: TextStyles.medium14(context),
              ),
              GestureDetector(
                  onTap: () {
                    scrollRight(scrollController: controller);
                    setState(() {
                      isScrollLeft = false;
                      isScrollRight = true;
                    });
                  },
                  child: SvgPicture.asset(isScrollRight
                      ? Assets.imagesArrowRight
                      : Assets.imagesArrowRightInactive))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          WeekCalenderListView(controller: controller, totalDayinMonth: totalDayinMonth, today: today)
        ],
      ),
    );
  }
}


