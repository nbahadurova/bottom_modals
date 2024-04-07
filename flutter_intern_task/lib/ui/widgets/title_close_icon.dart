import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/close_icon.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';

class TitleCloseIcon extends StatelessWidget {

  const TitleCloseIcon({ super.key });

   @override
   Widget build(BuildContext context) {
       return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppTexts.profile,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              CloseIcon(onTap: () {
                Navigator.pop(context);
              },)
            ],
          );
  }
}