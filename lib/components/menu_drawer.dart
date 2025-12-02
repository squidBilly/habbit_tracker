import 'package:flutter/material.dart';
typedef VoidCallback = void Function();
class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer();
  }

  Widget buildDrawItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile();
  }
}
