import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/more_button.dart';
import 'package:flutter_intern_task/models/more_button_model.dart';

class MoreButtonView extends StatelessWidget {
  const MoreButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    const items = MoreButtonModel.moreBtnModelItems;
    final List<Widget> userList = List.generate(
      items.length,
      (index) => MoreButton(
        color: items[index].color,
        text: items[index].text,
        icon: items[index].icon,
      ),
    );
    return Column(
      children: userList,
    );
  }
}
