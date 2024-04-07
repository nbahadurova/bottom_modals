import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/global_modal.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/extensions/num_extensions.dart';
import 'package:flutter_intern_task/ui/widgets/check_box_modal.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/ui/widgets/cancel_submit_modal.dart';

class PopupMenuItems extends StatelessWidget {
  const PopupMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomRight,
      backgroundColor: AppColors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PopupMenuItem(
              onTap: () {
                Navigator.pop(context);
                modal(
                  context,
                  const CancelSubmitModal(
                    text: AppTexts.onOffNotification,
                  ),
                );
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.notifications_off_outlined,
                    color: Color(
                      0xff919191,
                    ),
                  ),
                  10.w,
                  const Text(
                    AppTexts.notification,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )),
          PopupMenuItem(
              onTap: () {
                Navigator.pop(context);
                modal(
                    context,
                    const CancelSubmitModal(
                      text: AppTexts.blocked,
                    ));
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.block,
                    color: Color(
                      0xff919191,
                    ),
                  ),
                  10.w,
                  const Text(
                    AppTexts.block,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )),
          PopupMenuItem(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  isDismissible: false,
                  showDragHandle: true,
                  context: context,
                  builder: (context) {
                    return const CheckBoxModal();
                  },
                );
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.flag,
                    color: AppColors.red,
                  ),
                  10.w,
                  const Text(
                    AppTexts.complain,
                    style: TextStyle(color: AppColors.red, fontSize: 16),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
