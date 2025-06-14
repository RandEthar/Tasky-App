


import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_drawer.dart';

import 'package:tasky_app/widgets/tablet_body.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
     padding: EdgeInsets.symmetric(horizontal: 46, vertical: 64),
      child: Row(
        
        
        children: [
               Expanded(flex: 2,
         
            child: CustomDrawer()),
        SizedBox(
              width: 20,
            ),
                 Expanded(
                    flex: 3,
                    child:TabletBody(),
                  ),
      
      ],),
    );
  }
}
