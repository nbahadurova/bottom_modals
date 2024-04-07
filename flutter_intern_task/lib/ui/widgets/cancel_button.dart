import 'package:flutter/material.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/extensions/material_state_property_extension.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key, required this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            padding: const EdgeInsets.only(top: 10, bottom: 10).mspAll,
            backgroundColor: AppColors.white.mspAll,
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Color(0xffC4C4C4)))
                .mspAll),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
