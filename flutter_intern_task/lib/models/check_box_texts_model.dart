import 'package:flutter_intern_task/constants/texts/app_texts.dart';


class CheckBoxTextsModel {
  const CheckBoxTextsModel({required this.text});

  final String text;

  static const List<CheckBoxTextsModel> texts = [
    CheckBoxTextsModel(text: AppTexts.checkbox1),
    CheckBoxTextsModel(text: AppTexts.checkbox2),
    CheckBoxTextsModel(text: AppTexts.checkbox3),
    CheckBoxTextsModel(text: AppTexts.checkbox4),
    CheckBoxTextsModel(text: AppTexts.checkbox5),
    CheckBoxTextsModel(text: AppTexts.checkbox6),
    CheckBoxTextsModel(text: AppTexts.checkbox7),
    CheckBoxTextsModel(text: AppTexts.checkbox8),
  ];
}