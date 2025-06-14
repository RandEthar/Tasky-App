import 'package:tasky_app/core/utils/app_images.dart';

class MonthlyMentorsModel {
  final String title;
  final String subTitle;
  final String patheImage;
  final int numberTaske;
  final double rating;
  final int numberOfReviews;
 

  MonthlyMentorsModel({
    required this.title,
    required this.subTitle,
    required this.patheImage,
    required this.numberTaske,
    required this.rating,
    required this.numberOfReviews,
   
  });
}
List<MonthlyMentorsModel> monthlyMentorsList = [
  MonthlyMentorsModel(
    title: 'Curious George',
    subTitle: 'UI UX Design',
    patheImage: Assets.imagesPhoto,
    numberTaske: 40,
    rating: 4.7,
    numberOfReviews: 750,
  ),
  MonthlyMentorsModel(
    title: 'Abraham Lincoln',
    subTitle: '3D Design',
     patheImage: Assets.imagesPhoto2,
    numberTaske: 32,
    rating: 4.9,
    numberOfReviews: 750,
  ),

  MonthlyMentorsModel(
    title: 'Skylar Dias',
       subTitle: 'Flutter Developer',
    patheImage:  Assets.imagesProfil,
    numberTaske: 45,
    rating: 4.6,
    numberOfReviews: 510,
  ),
];

