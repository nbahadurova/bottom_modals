import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/submit_button.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/extensions/num_extensions.dart';
import 'package:flutter_intern_task/constants/images/app_images.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/ui/widgets/popup_menu_items.dart';
import 'package:flutter_intern_task/ui/widgets/title_close_icon.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class ProfileModal extends StatefulWidget {
  const ProfileModal({
    super.key,
  });

  @override
  State<ProfileModal> createState() => _ProfileModalState();
}

class _ProfileModalState extends State<ProfileModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16 + AppPaddings.bottom15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleCloseIcon(),
          Center(
            child: CircleAvatar(
              radius: 60,
              child: ClipOval(
                child: Image.asset(
                  AppImages.userimage4,
                  fit: BoxFit.contain,
                  height: 128,
                  width: 128,
                ),
              ),
            ),
          ),
          10.h,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppTexts.userName4,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  5.w,
                  Container(
                    width: 44,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        AppTexts.boss,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                AppTexts.distance1,
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              20.h,
              Container(
                height: 32,
                width: 78,
                decoration: BoxDecoration(
                  color: AppColors.likeBgColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: AppColors.btnBgColor,
                      size: 18,
                    ),
                    Text(
                      AppTexts.likeNumber,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          17.h,
          const Text(
            AppTexts.bio,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
          5.h,
          const Text(
            AppTexts.description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.h,
          Row(
            children: [
              SubmitButton(
                backgroundColor: AppColors.btnBgColor,
                text: AppTexts.messageBtn,
                onPressed: () {},
              ),
              10.w,
              GestureDetector(
                onTap: () {
                  setState(() {});
                  showDialog(
                    useSafeArea: true,
                    context: context,
                    builder: (context) {
                      return const PopupMenuItems();
                    },
                  );
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffF7F7F7)),
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.more_horiz_rounded,
                    size: 26,
                    color: Color.fromARGB(255, 159, 159, 159),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
