import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(height: 40, width: 40, Assets.imagesTaskeManegar),
        const SizedBox(width: 16),
        Text('Task\nMANAGER', style: TextStyles.semiBold24(context)),
      ],
    );
  }
}
