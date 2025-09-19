import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: textColor)),
      centerTitle: false,
      backgroundColor: backgroundColor,
      elevation: 4.0, // Adds shadow
      shadowColor: Colors.black54, // Optional: customize shadow color
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
