import 'package:flutter/material.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';


class MoreButtonModel {
  const MoreButtonModel({required this.text, required this.icon,required this.color});
  final String text;
  final IconData icon;
  final Color color;

  static const List<MoreButtonModel> moreBtnModelItems = [
    MoreButtonModel(text: AppTexts.notification, icon: Icons.notification_add,color: AppColors.black),
    MoreButtonModel(text: AppTexts.block, icon: Icons.block,color: AppColors.black),
    MoreButtonModel(text: AppTexts.complain, icon: Icons.flag,color: AppColors.red),
  ];

  
  
}