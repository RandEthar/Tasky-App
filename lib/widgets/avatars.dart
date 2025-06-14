


import 'package:flutter/material.dart';


class Avatars extends StatelessWidget {
  const Avatars({
    super.key, required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ClipRRect(borderRadius: BorderRadius.circular(100),
          child: Image.asset(imagePath)),
      ),
    );
  }
}