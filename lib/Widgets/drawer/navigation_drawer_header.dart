import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import '../navigation_bar/logo/Nav_Bar_Logo.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NavBarLogo( navigationPath: HomeRoute,),
          Text("Tap here",
          style: TextStyle(
            color: Colors.black,
          ),)
        ],
      ),
    );
  }
}
