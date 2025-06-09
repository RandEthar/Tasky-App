import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_drawer.dart';
import 'package:tasky_app/widgets/dashboard_body.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 46, vertical: 64),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 20,
          ),

          Expanded(
            child: DashboardBody(
            
            ),
          ),
        ],
      ),
    );
  }
}
