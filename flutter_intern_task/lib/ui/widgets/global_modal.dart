import 'package:flutter/material.dart';

modal(context, Widget modal) {
  showModalBottomSheet(
    isDismissible: false,
    context: context,
    builder: (context) {
      return modal;
    },
  );
}
