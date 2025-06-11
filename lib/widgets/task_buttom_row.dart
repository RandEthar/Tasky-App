import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';
import 'package:tasky_app/widgets/avatars.dart';

class TaskBottomRow extends StatelessWidget {
  const TaskBottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.imagesTimeCircle,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            Text("3 Days Left", style: TextStyles.medium16)
          ],
        ),
       SizedBox(
   
          height: 24,
          width: calculatedWidth(24, 16, avatarsList.length).toDouble(),
          child: Stack(
              children: List.generate(avatarsList.length, (index) {
            return Positioned(
              left: index * 16.0,
              child: avatarsList[index],
            );
          })),
        ),
      ],
    );
  }
}

List<Widget> avatarsList = [
  const Avatars(),
  const Avatars(),
  const Avatars(),
  const Avatars(),
];

int calculatedWidth(int avatarSize,int overlap,int listLength){
return (listLength -1)*overlap + avatarSize;
}
