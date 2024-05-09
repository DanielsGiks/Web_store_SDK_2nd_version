import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/routing/route_names.dart';

import '../navigation_drawer_header.dart';
import 'drawer_item_loged.dart';


class NavDrawerLoged extends StatelessWidget {
  const NavDrawerLoged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16,),],
      ),
      child: Column(
        children: const [
          NavDrawerHeader(),
          DrawerItemLoged(title: 'Blog', icon: CupertinoIcons.airplane, navigationPath: SettingsRoute,),
          DrawerItemLoged(title: 'Buy', icon: CupertinoIcons.bag_fill_badge_plus, navigationPath: BuyRoute,),
        ],
      ),
    );
  }
}
