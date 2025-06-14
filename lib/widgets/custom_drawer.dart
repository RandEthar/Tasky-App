import 'package:flutter/material.dart';

import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/widgets/custom_drawer_header.dart';

import 'package:tasky_app/widgets/drawer_list_view_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width*0.7,
        padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
        decoration: const BoxDecoration(
          color: AppColor.contanrackground,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      child: const CustomScrollView(
        slivers: [
      SliverToBoxAdapter(child: CustomDrawerHeader()),
      SliverToBoxAdapter(child: SizedBox(height: 58)),
        DrawerListView(),
      
        ],
      ),
      
      ),
    );
  }
}