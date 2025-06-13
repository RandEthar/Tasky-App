


import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_drawer.dart';
import 'package:tasky_app/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key, required this.scaffoldKey});
final   GlobalKey<ScaffoldState>  scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return  Padding(
     padding:const EdgeInsets.symmetric(horizontal: 46, vertical: 64),
      child: Row(
        
        
        children: [
               const   Expanded(flex: 2,
         
            child: CustomDrawer()),
          const  SizedBox(
              width: 20,
            ),
                 Expanded(
                    flex: 3,
                    child:DashBoardMobileLayout(scaffoldKey: scaffoldKey),
                  ),
      
      ],),
    );
  }
}
