import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/users_list.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h16 + AppPaddings.top16,
        child: const UsersList(),
      ),
    );
  }
}
