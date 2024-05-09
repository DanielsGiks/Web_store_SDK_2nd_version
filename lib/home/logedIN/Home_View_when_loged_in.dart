import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/c2a/call_to_action.dart';
import 'package:sdk_school/Widgets/centered_view/centered_view.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar.dart';
import 'package:sdk_school/home/home_view_desktop.dart';
import 'package:sdk_school/home/home_view_mobile.dart';
import 'package:sdk_school/home/logedIN/Home_view_desktop_when_loged.dart';
import 'package:sdk_school/home/logedIN/Home_view_mobile_when_loged.dart';

import '../../Widgets/details/details.dart';
import '../../Widgets/drawer/navigation_drawer.dart';



class HomeViewLogedIn extends StatefulWidget {
  const HomeViewLogedIn({Key? key}) : super(key: key);

  @override
  State<HomeViewLogedIn> createState() => _HomeViewLogedInState();
}

class _HomeViewLogedInState extends State<HomeViewLogedIn> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKeyLoged = new GlobalKey<ScaffoldState>();
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => HomeViewMobileLogedIn(),
      tablet: (BuildContext context) => HomeViewMobileLogedIn(),
      desktop: (BuildContext context) => HomeViewDesktopLogedIn(),
    );
  }
}
