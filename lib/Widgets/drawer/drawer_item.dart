import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/nav_bar_item.dart';


class DrawerItem extends StatelessWidget {
  final String title;
  final Icon icon;
  const DrawerItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 30),
      child: Row(
        children: [
          Icon(Icons.abc),
          SizedBox(height: 8,),
          NavBarItem(title)
        ],
      ),

    );
  }
}
