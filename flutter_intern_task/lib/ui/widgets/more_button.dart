import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton(
      {super.key, required this.text, required this.icon, required this.color});
  final String text;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
