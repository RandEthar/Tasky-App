


import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/drawer_item_model.dart';
import 'package:tasky_app/widgets/custom_drawer_item.dart';

class DrawerListViewItem extends StatefulWidget {
  const DrawerListViewItem({super.key});

  @override
  State<DrawerListViewItem> createState() => _DrawerListViewItemState();
}

class _DrawerListViewItemState extends State<DrawerListViewItem> {
    int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return    Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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
            ),
          );
  }
}