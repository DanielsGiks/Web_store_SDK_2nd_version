import 'package:flutter/material.dart';
import 'logo/Nav_Bar_Logo.dart';
import 'nav_bar_item.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem("Settings"),
              SizedBox(width: 80,),
              NavBarItem("Buy"),
            ],
          )
        ],
      ),
    );
  }
}
