import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/widgets/adaptive_layout_widget.dart';
import 'package:tasky_app/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context)=>const SizedBox(),
        tabletLayout:(context)=>const SizedBox(),
        desktopLayout:(context)=>const DashboardDesktopLayout(),
      ),
    );
  }
}


