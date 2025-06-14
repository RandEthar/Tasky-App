


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasky_app/core/helper_function.dart/scroll_to_today_date.dart';

import 'package:tasky_app/widgets/week_calender_item.dart';


class WeekCalenderListView extends StatefulWidget {
  const WeekCalenderListView({
    super.key,
    required this.controller,
    required this.totalDayinMonth,
    required this.today,
  });

  final ScrollController controller;
  final int totalDayinMonth;
  final DateTime today;

  @override
  State<WeekCalenderListView> createState() => _WeekCalenderListViewState();
}

class _WeekCalenderListViewState extends State<WeekCalenderListView> {
  late int isSelectedItem;

@override
void initState() {
  super.initState();
  isSelectedItem = widget.today.day;
    

  WidgetsBinding.instance.addPostFrameCallback((_) {
     scrollToTodayDate(controller: widget.controller,todayDate:widget.today.day);
  });

}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
          controller: widget.controller,
          scrollDirection: Axis.horizontal,
          itemCount:widget.totalDayinMonth,
          itemBuilder: (context, index) {
            DateTime day=DateTime(widget.today.year,widget.today.month,index+1);
        
            return  GestureDetector(
              onTap: (){
                setState(() {
                  isSelectedItem=index+1;
                });
              },
              child: Padding(
                padding:const EdgeInsets.only(right: 18),
                child: WeekCalenderItem(date: day,active:isSelectedItem==index+1 ,),
              ),
            );
          }),
    );
  }
}