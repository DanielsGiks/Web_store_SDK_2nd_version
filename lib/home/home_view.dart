import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/Widgets/c2a/call_to_action.dart';
import 'package:sdk_school/Widgets/centered_view/centered_view.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar.dart';
import 'package:sdk_school/home/home_view_desktop.dart';
import 'package:sdk_school/home/home_view_mobile.dart';

import '../Widgets/details/details.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Centered_View(

        child: Column(
          children: [
            Navigation_Bar(),
            Expanded(child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => HomeViewMobile(),
              tablet: (BuildContext context) => HomeViewMobile(),
              desktop: (BuildContext context) => HomeViewDesktop(),
            ),
            )
          ],
        ),
      )
    );
  }
}
