


import 'package:flutter/widgets.dart';
import 'package:tasky_app/core/utils/size_config.dart';

bool checkTabletLayout({required BuildContext context}){
return  MediaQuery.sizeOf(context).width>SizeConfig.taplet;




}