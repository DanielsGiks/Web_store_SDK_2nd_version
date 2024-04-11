import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'logo/Nav_Bar_Logo.dart';
import 'nav_bar_item.dart';
import 'navigation_bar_mobile.dart';


class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => NavBarMobile(),
      tablet: (BuildContext context) => NavBarTabletDesktop(),
    );
  }
}



