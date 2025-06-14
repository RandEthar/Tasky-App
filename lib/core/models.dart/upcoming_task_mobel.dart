import 'package:tasky_app/core/utils/app_images.dart';

class UpcomingTaskMobel {
  final String title;
  final String subTitle;
  final String imagePath;

  final int daysLeft;

  UpcomingTaskMobel(
      {required this.title,
      required this.subTitle,
      required this.imagePath,
      required this.daysLeft});
}
List<UpcomingTaskMobel>upcomingTaskList=[

 UpcomingTaskMobel(
    title: 'Creating Mobile App Design',
    subTitle: 'UI UX Design',
    imagePath: Assets.imagesCreatingMobileDesign,

    daysLeft: 3,
  ),

   UpcomingTaskMobel(
    title: 'Creating Perfect Website',
    subTitle: 'Web Developer',
    imagePath: Assets.imagesWebPhoto,

    daysLeft: 3,
  ),

 UpcomingTaskMobel(
  title: 'Design Marketing Poster',
 subTitle: 'Graphic Design',
  imagePath: Assets.imagesImagePoster,

  daysLeft: 2,

),













];