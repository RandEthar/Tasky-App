


import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout});
  final WidgetBuilder mobileLayout,tabletLayout,desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<600){
    return mobileLayout(context);
      }else if(constraints.maxWidth<1100){
        return tabletLayout(context);
    }else{
    return desktopLayout(context);
    }});
  }
}