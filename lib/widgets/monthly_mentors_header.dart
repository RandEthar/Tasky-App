


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class MonthlyMentorsHeader extends StatelessWidget {
  const MonthlyMentorsHeader({super.key});

  @override
  Widget build(BuildContext context) {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Monthly Mentors',
          style: TextStyles.semiBold24
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