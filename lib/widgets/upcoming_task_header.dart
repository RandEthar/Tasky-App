

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class UpcomingTaskHeader extends StatelessWidget {
  const UpcomingTaskHeader({super.key});


  @override
  Widget build(BuildContext context) {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming Task',
          style: TextStyles.semiBold24(context)
        ),
       Row(children: [ SvgPicture.asset(Assets.imagesArrowLeft,
          height: 24,
          width: 24,
        ),
       const SizedBox(width: 10,),
          SvgPicture.asset(Assets.imagesArrowRight,
          height: 24,
          width: 24,
        ),],)
        
        
        ]
   );
  }
}