import 'package:flutter/material.dart';

const Color myColor = Color(0xFFAFAFF2);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Book Catalogue"),
      backgroundColor: myColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
