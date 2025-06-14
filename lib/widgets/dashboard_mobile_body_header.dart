




import 'package:flutter/material.dart';

import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/custom_mobile_app_bar.dart';

class DashboardMobileBodyHeader extends StatelessWidget {
  const DashboardMobileBodyHeader({super.key, required this.scaffoldKey});
   final GlobalKey<ScaffoldState>scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return    Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           CustomMobileAppBar(scaffoldKey:scaffoldKey ,),
           const Divider(
              height: 72,
              color: Colors.white,
            ),
           Padding(
           padding:const  EdgeInsets.symmetric(horizontal: 24),
             child: Column(children: [  Text(
                  'Hi, Skylar Dias',
                  style: TextStyles.semiBold24
                ),
                 Text(
                  "Let's finish your task today!",
                  style: TextStyles.medium14.copyWith(
                    color: const Color(0x7FDADADA),
                  )
                ),],),
           )
            ],
          );
  }
}