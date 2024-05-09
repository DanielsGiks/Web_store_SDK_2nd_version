import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import '../navigation_bar_mobile.dart';
import 'navigation_bar_tablet_desktop_loged.dart';



class NavigationBarLoged extends StatefulWidget {
   NavigationBarLoged({Key? key}) : super(key: key);

  @override
  State<NavigationBarLoged> createState() => _NavigationBarLogedState();
}

class _NavigationBarLogedState extends State<NavigationBarLoged> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => NavBarMobile(),
      tablet: (BuildContext context) => NavBarTabletDesktopLoged(),
      desktop: (BuildContext context) => NavBarTabletDesktopLoged(),
    );
  }
}



