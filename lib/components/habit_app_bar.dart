import 'package:flutter/material.dart';

class HabitAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;


  const HabitAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade700,
      title: title,
    );
  }
}
