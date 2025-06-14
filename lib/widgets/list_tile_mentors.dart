import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasky_app/core/models.dart/monthly_mentors_model.dart';

import 'package:tasky_app/core/utils/app_styles.dart';

class ListTileMentors extends StatefulWidget {
  const ListTileMentors({super.key, required this.monthlyMentorsModel});
  final MonthlyMentorsModel monthlyMentorsModel;
  @override
  State<ListTileMentors> createState() => _ListTileMentorsState();
}

class _ListTileMentorsState extends State<ListTileMentors> {
  String addedFrindes = '+ Follow ';
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
       widget.monthlyMentorsModel.patheImage,
        height: 48,
        width: 48,
        fit: BoxFit.fill,
      ),
      title: Text(widget.monthlyMentorsModel.title,
          style: TextStyles.semiBold16(context).copyWith(
            color: Colors.white,
          )),
      subtitle: Text(widget.monthlyMentorsModel.subTitle,
          style: TextStyles.medium12(context).copyWith(
            color: const Color(0x7FEBEDFA),
          )),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            addedFrindes =
                (addedFrindes == '+ Follow ') ? 'Following' : '+ Follow ';
          });
          log('addedFrindes: $addedFrindes');
        },
        child: Text(addedFrindes,
            style: TextStyles.medium14(context).copyWith(
              color: const Color(0x7FEBEDFA),
            )),
      ),
    );
  }
}
