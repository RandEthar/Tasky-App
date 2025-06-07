

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class DashboardBodyHeader extends StatelessWidget {
  const DashboardBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(left:41, right: 19, top: 30,bottom: 30),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(
                'Hi, Skylar Dias',
                style: TextStyles.semiBold24
              ),
               Text(
                "Let's finish your task today!",
                style: TextStyles.medium16.copyWith(
                  color: const Color(0x7FDADADA),
                )
              ),
            ],
          ),
         const Spacer(),
         SvgPicture.asset(Assets.imagesNotification),
          const SizedBox(width: 24),
          SvgPicture.asset(Assets.imagesProfil),
          const SizedBox(width: 16),
        
         
        ],
      ),
    );
  }
}