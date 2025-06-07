


import 'package:tasky_app/core/utils/app_images.dart';

class DrawerItemModel {
  final String title;
  final String iconPath;


  DrawerItemModel({
    required this.title,
    required this.iconPath,
 
  });


}
List<DrawerItemModel> drawerItems = [
  DrawerItemModel(
    title: 'Overview',
    iconPath: Assets.imagesOverview ,
  ),
  DrawerItemModel(
    title: 'Task',
    iconPath:Assets.imagesTask ,
  ),
  DrawerItemModel(
    title: 'Mentors',
    iconPath: Assets.imagesMentors ,
  ),
  DrawerItemModel(
    title: 'Message',
    iconPath: Assets.imagesMessage,
  ),  DrawerItemModel(
    title: 'Images',
    iconPath:Assets.imagesImages,
  ),
  DrawerItemModel(
    title: 'Settings',
    iconPath: Assets.imagesSettings
  ),
];