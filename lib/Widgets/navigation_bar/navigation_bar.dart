import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar_loged/navigation_bar_tablet_desktop_loged.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:sdk_school/globals.dart';
import '../../helper/helper_function.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';
import 'logo/Nav_Bar_Logo.dart';
import 'nav_bar_item.dart';
import 'navigation_bar_mobile.dart';
import 'package:sdk_school/globals.dart' as globals;


class Navigation_Bar extends StatefulWidget {
   Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => NavBarMobile(),
      tablet: (BuildContext context) => NavBarTabletDesktop(Logged: globals.isLogedIn,),
      desktop: (BuildContext context) => NavBarTabletDesktop(Logged: globals.isLogedIn,),
    );
  }
}



