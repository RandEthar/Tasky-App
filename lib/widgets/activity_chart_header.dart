import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class ActivityChartHeader extends StatefulWidget {
  const ActivityChartHeader({super.key});

  @override
  State<ActivityChartHeader> createState() => _ActivityChartHeaderState();
}

class _ActivityChartHeaderState extends State<ActivityChartHeader> {

  String selectedItem="This Week";
  List<String> items = [
    "This Week",
    "This Month",
    "This Year",
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Activity',
          style: TextStyles.semiBold16(context)
        ),
   
       DropdownButton<String>(
          underline: const SizedBox(),
          dropdownColor: AppColor.background,
        icon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SvgPicture.asset(Assets.imagesArrowDown,height: 12,width: 12,),
        ),
        iconEnabledColor:const Color(0xff54577A),
        onChanged: (value) {
          setState(() {
            selectedItem = value!;
          });
        },
        value:selectedItem ,
        items: items.map((e)=> DropdownMenuItem<String>(
          value: e,
          child: Text(
            e,
            style: TextStyles.medium14(context).copyWith(
              color: const Color(0xFFEBEDFA),
            ),
          ),
        )).toList(),
       )
        
      ],
    
    );
  }
}