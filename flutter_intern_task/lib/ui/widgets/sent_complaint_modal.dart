import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/cancel_button.dart';
import 'package:flutter_intern_task/extensions/num_extensions.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/ui/widgets/title_close_icon.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class SentComplaintModal extends StatelessWidget {
  const SentComplaintModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16 + AppPaddings.bottom15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TitleCloseIcon(),
          Container(
            height: 106,
            width: 106,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.btnBgColor,
                  offset: Offset(0, 1),
                  spreadRadius: 2,
                  blurRadius: 0,
                )
              ],
              color: AppColors.btnBgColor,
              shape: BoxShape.circle,
            ),
          ),
          25.h,
          const Text(
            AppTexts.sentComplain,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          20.h,
          Row(
            children: [
              CancelButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: AppTexts.close),
            ],
          )
        ],
      ),
    );
  }
}
