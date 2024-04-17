import 'package:flutter/material.dart';
import 'package:sdk_school/routing/route_names.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16,),],
      ),
      child: Column(
        children: [
          NavDrawerHeader(),
          DrawerItem(title: 'Settings', icon: Icon(Icons.settings), navigationPath: SettingsRoute,),
          DrawerItem(title: 'Buy', icon: Icon(Icons.wallet_outlined), navigationPath: BuyRoute,),
        ],
      ),
    );
  }
}
