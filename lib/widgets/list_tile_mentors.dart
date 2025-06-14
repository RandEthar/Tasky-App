


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_images.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class ListTileMentors extends StatefulWidget {
  const ListTileMentors({super.key});

  @override
  State<ListTileMentors> createState() => _ListTileMentorsState();
}

class _ListTileMentorsState extends State<ListTileMentors> {
  String addedFrindes='+ Follow ';
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
    
          leading: Image.asset(Assets.imagesPhoto,height: 48,width: 48,fit: BoxFit.fill,),
          title:Text('Curious George', style: TextStyles.semiBold16(context).copyWith(
            color:  Colors.white,
          )),
          subtitle:  Text('UI UX Design', style: TextStyles.medium12(context).copyWith(
            color: const Color(0x7FEBEDFA),
          )),
          trailing:   GestureDetector(
            onTap: (){
           
              setState(() {   addedFrindes =( addedFrindes == '+ Follow ') ? 'Following' : '+ Follow ';});
            log( 'addedFrindes: $addedFrindes');
            },
            child: Text(addedFrindes, style: TextStyles.medium14(context).copyWith(
              color: const Color(0x7FEBEDFA),
            )),
          ),
        );
  }
}