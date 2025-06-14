import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/upcoming_task_list_view.dart';


class UpcomingTaskSection extends StatefulWidget {
  const UpcomingTaskSection({super.key});

  @override
  State<UpcomingTaskSection> createState() => _UpcomingTaskSectionState();
}

class _UpcomingTaskSectionState extends State<UpcomingTaskSection> {
  late ScrollController _scrollController ;


  @override
  void initState() {
   
    super.initState();
    _scrollController = ScrollController();
  }

  void scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 400,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
   void scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 400,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
  @override
  void dispose() {
  
    super.dispose();
    _scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
  
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming Task',
          style: TextStyles.semiBold24(context)
        ),
       Row(children: [ GestureDetector(
        onTap: scrollLeft,
          child: SvgPicture.asset(Assets.imagesArrowLeft,
            height: 24,
            width: 24,
          ),
        
       ),
       const SizedBox(width: 10,),
          GestureDetector(
             onTap: scrollRight,
            child: SvgPicture.asset(Assets.imagesArrowRight,
            height: 24,
            width: 24,
                    ),
          ),],)
        
        
        ]
   ),
      const SizedBox(height: 20),
       UpcomingTaskListView(scrollController: _scrollController,)

      
      ],
    );
  }
}

