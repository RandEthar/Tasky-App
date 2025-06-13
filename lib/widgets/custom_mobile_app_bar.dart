



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_app/core/utils/app_images.dart';

class CustomMobileAppBar extends StatelessWidget {
  const CustomMobileAppBar({super.key, required this.scaffoldKey});
   final GlobalKey<ScaffoldState>scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left:24 ,right:24 ,top: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap:(){
                  scaffoldKey.currentState!.openDrawer();
            } ,
            child: Container(
                decoration: const ShapeDecoration(
                    shape: CircleBorder(side: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(Assets.imagesMenu,height: 24,width: 24,),
                ),
              ),
          ),
            Row(children: [
                    Container(
              decoration: const ShapeDecoration(
                  shape: CircleBorder(side: BorderSide(color: Colors.white))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(Assets.imagesNotification,height: 24,width: 24,),
              ),
            ), const SizedBox(width: 24,),
            
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(Assets.imagesProfil,fit: BoxFit.fill,
              ),
            )
            ],),
          
    
    
      ],),
    );
  }
}