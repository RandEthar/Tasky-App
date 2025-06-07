

import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/drawer_item_model.dart';
import 'package:tasky_app/widgets/active_custom_drawer_item.dart';
import 'package:tasky_app/widgets/in_active_custom_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.item, required this.isActive});
  final DrawerItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCustomDrawerItem(item: item)
        : InActiveCustomDrawerItem(item: item);
  }
}