import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar_loged/nav_bar_item+logout.dart';
import '../../../routing/route_names.dart';
import '../logo/Nav_Bar_Logo.dart';
import '../nav_bar_item.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_bar_item_Cart.dart';


class NavBarTabletDesktopLoged extends StatelessWidget {
  const NavBarTabletDesktopLoged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo( navigationPath: HomeRouteLoged,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem("Blog", SettingsRoute),
              SizedBox(width: 80,),
              NavBarItem("Buy", BuyRoute),
              SizedBox(width: 80,),
              NavBarItemCart("Cart"),
              SizedBox(width: 80,),
              NavBarItemLogout("Logout"),
            ],
          )
        ],
      ),
    );
  }
}
