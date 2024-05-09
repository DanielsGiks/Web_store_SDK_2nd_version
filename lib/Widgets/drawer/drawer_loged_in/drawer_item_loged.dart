import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/nav_bar_item.dart';


class DrawerItemLoged extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItemLoged({required this.title, required this.icon, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 30),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8,),
          NavBarItem(title, navigationPath)
        ],
      ),

    );
  }
}
