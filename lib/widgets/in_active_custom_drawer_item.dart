import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/models.dart/drawer_item_model.dart';

import 'package:tasky_app/core/utils/app_styles.dart';

class InActiveCustomDrawerItem extends StatelessWidget {
  const InActiveCustomDrawerItem({super.key, required this.item});
  final DrawerItemModel item;
    @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
         duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
      
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            item.iconPath,
          ),
          const SizedBox(width: 16),
          Text(item.title, style: TextStyles.medium24),
        ],
      ),
    );
  }
}
