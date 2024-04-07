import 'package:flutter/material.dart';
import 'package:flutter_intern_task/ui/widgets/profile_modal.dart';
import 'package:flutter_intern_task/constants/colors/app_colors.dart';
import 'package:flutter_intern_task/constants/paddings/app_paddings.dart';

class UserListTile extends StatefulWidget {
  const UserListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  State<UserListTile> createState() => _UserListTileState();
}

class _UserListTileState extends State<UserListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.bottom15,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            isDismissible: false,
            useSafeArea: true,
            showDragHandle: true,
            enableDrag: true,
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const ProfileModal();
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 215, 214, 214).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            title: Text(widget.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            subtitle: Text(widget.subTitle,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            leading: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              )),
            ),
            trailing: const Icon(Icons.chat_bubble_outline_outlined),
            enabled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
    );
  }
}
// void showPopupMenu(BuildContext context) {
//     final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
//     final RelativeRect position = RelativeRect.fromRect(
//       Rect.fromPoints(
//         Offset.zero,
//         overlay.localToGlobal(overlay.size.bottomRight(Offset.zero)),
//       ),
//       Offset.zero & overlay.size,
//     );

//     showMenu(
//       context: context,
//       position: position,
//       items: const [
//         PopupMenuItem(
//           child: Text('Seçenek 1'),
//           value: 'option1',
//         ),
//         PopupMenuItem(
//           child: Text('Seçenek 2'),
//           value: 'option2',
//         ),
//         PopupMenuItem(
//           child: Text('Seçenek 3'),
//           value: 'option3',
//         ),
//       ],
//     ).then((value) {
//       // Popup menüden seçilen değeri işleyin
//       print('Seçilen seçenek: $value');
//     });
//   }

