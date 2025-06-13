


import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/drawer_item_model.dart';
import 'package:tasky_app/widgets/custom_drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
    int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return   SliverList.builder(
   
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomDrawerItem(
              item: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}