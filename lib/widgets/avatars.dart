


import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_images.dart';

class Avatars extends StatelessWidget {
  const Avatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ClipRRect(borderRadius: BorderRadius.circular(100),
          child: Image.asset(Assets.imagesRand)),
      ),
    );
  }
}