import 'package:flutter/material.dart';

class Navegacio extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backcolor;
  final Color colorText;

  const Navegacio({
    Key? key,
    required this.title,
    required this.backcolor,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.star,
            color: colorText,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0), // Ajuste del espaciado
            child: Text(
              title,
              style: TextStyle(
                color: colorText,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backcolor, 
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
