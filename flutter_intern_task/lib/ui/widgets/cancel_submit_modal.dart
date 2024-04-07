import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/cancel_button.dart';
import 'package:flutter_intern_task/ui/widgets/submit_button.dart';
import 'package:flutter_intern_task/extensions/num_extensions.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class CancelSubmitModal extends StatelessWidget {
  const CancelSubmitModal({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16 + AppPaddings.top16 + AppPaddings.bottom15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          15.h,
          Row(
            children: [
              CancelButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: AppTexts.cancelBtn),
              12.w,
              SubmitButton(
                backgroundColor: AppColors.btnBgColor,
                text: AppTexts.closeBtn,
                onPressed: () {
                  Navigator.pop(context);
                  final snackBar = SnackBar(
                    duration: const Duration(seconds: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    content: const Text(
                      AppTexts.closedNotification,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                    backgroundColor: AppColors.black,
                    action: SnackBarAction(
                      textColor: AppColors.likeBgColor,
                      label: AppTexts.cancelBtn,
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Padding(
                    padding: AppPaddings.h16,
                    child: snackBar,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
