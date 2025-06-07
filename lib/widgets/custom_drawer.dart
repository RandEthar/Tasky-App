import 'package:flutter/material.dart';

import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/widgets/custom_drawer_header.dart';

import 'package:tasky_app/widgets/drawer_list_view_item.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
      decoration: const BoxDecoration(
        color: AppColor.contanrackground,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: const Column(
        children: [
          CustomDrawerHeader(),
          SizedBox(height: 58),
          DrawerListViewItem()
        ],
      ),
    );
  }
}
