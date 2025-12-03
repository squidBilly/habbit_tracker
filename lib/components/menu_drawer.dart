import 'package:flutter/material.dart';
import 'package:habbit_tracker/screens/add_habit_screen.dart';
import 'package:habbit_tracker/screens/notifications_screen.dart';
import 'package:habbit_tracker/screens/personal_info_screen.dart';
import 'package:habbit_tracker/screens/reports_screen.dart';

typedef VoidCallback = void Function();
typedef UserData = void Function();
typedef SignOut = void Function(BuildContext context);

class MenuDrawer extends StatelessWidget {
  final UserData loadUserData;
  final SignOut signOut;

  const MenuDrawer({
    super.key,
    required this.loadUserData,
    required this.signOut,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue.shade700),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildDrawItem(Icons.settings, 'Configure', () async {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddHabitScreen()),
            ).then((_) {
              loadUserData();
            });
          }),
          buildDrawItem(Icons.person, 'Personal Info', () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
            ).then((_) {
              loadUserData();
            });
          }),
          buildDrawItem(Icons.analytics, 'Reports', () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportsScreen()),
            );
          }),
          buildDrawItem(Icons.notifications, 'Notifications', () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsScreen()),
            );
          }),
          buildDrawItem(Icons.logout, 'Sign out', () {
            signOut(context);
          }),
        ],
      ),
    );
  }

  Widget buildDrawItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile(leading: Icon(icon), title: Text(text), onTap: onTap);
  }
}
