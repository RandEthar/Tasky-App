



import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
          minimumSize:MaterialStateProperty.all(const Size(double.infinity, 44)),
          backgroundColor: MaterialStateProperty.all(AppColor.secondary),
          shape:  MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )),
        ),
        child: Text(
          "Go To Detail",
          
          style: TextStyles.semiBold14(context).copyWith(
            color: Colors.white
          ),
        ));
  }
}