import 'package:flutter/material.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/extensions/material_state_property_extension.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.backgroundColor});
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
            padding: const EdgeInsets.only(top: 10, bottom: 10).mspAll,
            backgroundColor: backgroundColor.mspAll,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    .mspAll),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
