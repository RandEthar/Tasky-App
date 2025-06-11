


import 'package:flutter/material.dart';


import 'package:tasky_app/widgets/monthly_mentors_list_view.dart';


class MonthlyMentorsSection extends StatelessWidget {
  const MonthlyMentorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [

     MonthlyMentorsListView(),
   
          
    ],);
  }
}