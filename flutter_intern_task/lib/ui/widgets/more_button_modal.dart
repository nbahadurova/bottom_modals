import 'package:flutter/material.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/ui/widgets/more_button_view.dart';

class MoreButtonModal extends StatelessWidget {
  const MoreButtonModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration:  BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Column(
            children: [
              MoreButtonView(),
            ],
          )),
    );
  }
}
