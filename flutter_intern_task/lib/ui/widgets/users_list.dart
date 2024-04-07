import 'package:flutter/material.dart';
import 'package:flutter_intern_task/models/user_list_model.dart';
import 'package:flutter_intern_task/ui/widgets/user_list_tile.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = UserListModel.userListItems;
    final List<Widget> userList = List.generate(
      items.length,
      (index) => UserListTile(
        title: items[index].title,
        subTitle: items[index].subTitle,
        image: items[index].image,
      ),
    );
    return Column(
      children: userList,
    );
  }
}
