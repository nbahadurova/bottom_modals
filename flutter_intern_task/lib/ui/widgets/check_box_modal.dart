import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/close_icon.dart';
import 'package:flutter_intern_task/ui/widgets/submit_button.dart';
import 'package:flutter_intern_task/extensions/num_extensions.dart';
import 'package:flutter_intern_task/constants/texts/app_texts.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/models/check_box_texts_model.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';
import 'package:flutter_intern_task/ui/widgets/sent_complaint_modal.dart';

class CheckBoxModal extends StatefulWidget {
  const CheckBoxModal({super.key});

  @override
  State<CheckBoxModal> createState() => _CheckBoxModalState();
}

class _CheckBoxModalState extends State<CheckBoxModal> {
  final List<bool> _isCheckedList = List.generate(
    CheckBoxTextsModel.texts.length,
    (index) => false,
  );
  @override
  Widget build(BuildContext context) {
    const text = CheckBoxTextsModel.texts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPaddings.h16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CloseIcon(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              8.h,
              const Text(
                AppTexts.checkbox,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E)),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: text.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.red,
                      side: const BorderSide(
                        color: Color.fromARGB(255, 78, 78, 78),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      value: _isCheckedList[index],
                      onChanged: (value) {
                        setState(() {
                          _isCheckedList[index] = value ?? false;
                        });
                      },
                    ),
                    Expanded(child: Text(text[index].text,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black),
                    )),
                  ],
                );
              },
            ),
          ),
        ),
        Padding(
          padding: AppPaddings.h16 + AppPaddings.bottom15,
          child: Row(
            children: [
              SubmitButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      isDismissible: false,
                      showDragHandle: true,
                      context: context,
                      builder: (context) {
                        return const SentComplaintModal();
                      },
                    );
                  },
                  text: AppTexts.send,
                  backgroundColor: AppColors.red),
            ],
          ),
        )
      ],
    );
  }
}
