import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/c2a/call_to_action.dart';
import 'package:sdk_school/Widgets/centered_view/centered_view.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar.dart';
import 'package:sdk_school/home/home_view_desktop.dart';
import 'package:sdk_school/home/home_view_mobile.dart';

import '../Widgets/details/details.dart';
import '../Widgets/drawer/navigation_drawer.dart';



class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => HomeViewMobile(),
      tablet: (BuildContext context) => HomeViewMobile(),
      desktop: (BuildContext context) => HomeViewDesktop(),
    );
  }
}
