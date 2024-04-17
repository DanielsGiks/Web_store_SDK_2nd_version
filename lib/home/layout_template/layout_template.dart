import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sdk_school/locator.dart';
import 'package:sdk_school/routing/route_names.dart';
import 'package:sdk_school/routing/router.dart';
import 'package:sdk_school/services/navigation_service.dart';

import '../../Widgets/centered_view/centered_view.dart';
import '../../Widgets/drawer/navigation_drawer.dart';
import '../../Widgets/navigation_bar/navigation_bar.dart';
import '../home_view_desktop.dart';
import '../home_view_mobile.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder:(context, sizingInformation) => Scaffold(
          //key: _scaffoldKey,
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavDrawer() : null,
          backgroundColor: Colors.white10,
          body: Centered_View(

            child: Column(
              children: [
                Navigation_Bar(),
                Expanded(child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                )
                )
              ],
            ),
          )
      ),
    );
  }
}
