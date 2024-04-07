import 'package:flutter/material.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16 + AppPaddings.bottom15,
      child: SnackBar(
        margin: AppPaddings.h16,
        duration: const Duration(seconds: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: const Text(
          AppTexts.closedNotification,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.white),
        ),
        backgroundColor: AppColors.black,
        action: SnackBarAction(
          textColor: AppColors.likeBgColor,
          label: AppTexts.cancelBtn,
          onPressed: () {},
        ),
      ),
    );
  }
}
