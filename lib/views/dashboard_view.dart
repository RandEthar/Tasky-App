import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasky_app/core/helper_function.dart/check_tablet_layout.dart';
import 'package:tasky_app/core/utils/app_color.dart';

import 'package:tasky_app/widgets/adaptive_layout_widget.dart';
import 'package:tasky_app/widgets/custom_drawer.dart';
import 'package:tasky_app/widgets/dashboard_desktop_layout.dart';
import 'package:tasky_app/widgets/dashboard_mobile_layout.dart';
import 'package:tasky_app/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState>scaffoldKey=  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

          log("rannnddd ${MediaQuery.sizeOf(context).width.toString()}");
    return Scaffold(
      key: scaffoldKey,
    drawer: checkTabletLayout(context: context)?null:const CustomDrawer(),
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: AdaptiveLayoutWidget(
          mobileLayout: (context) =>  DashBoardMobileLayout(scaffoldKey: scaffoldKey,),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
