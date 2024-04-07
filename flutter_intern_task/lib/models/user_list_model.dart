import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/images/app_images.dart';

class UserListModel {
  const UserListModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  static const List<UserListModel> userListItems = [
    UserListModel(
        title: AppTexts.userName1,
        subTitle: AppTexts.distance1,
        image: AppImages.userImage1),
    UserListModel(
      title: AppTexts.userName2,
      subTitle: AppTexts.distance2,
      image: AppImages.userimage2,
    ),
    UserListModel(
      title: AppTexts.userName3,
      subTitle: AppTexts.distance3,
      image: AppImages.userimage3,
    ),
  ];
}
