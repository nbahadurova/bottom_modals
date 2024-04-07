import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {

  const CloseIcon({ super.key, required this.onTap });
  final void Function() onTap;
   @override
   Widget build(BuildContext context) {
       return  GestureDetector(
        onTap: onTap,
         child: Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Color(0xffF7F7F7),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 26,
                      color: Color.fromARGB(255, 159, 159, 159),
                    ),
                  ),
       );
  }
}