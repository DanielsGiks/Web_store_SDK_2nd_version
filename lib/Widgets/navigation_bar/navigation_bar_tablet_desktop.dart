import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../globals.dart';
import '../../routing/route_names.dart';
import 'logo/Nav_Bar_Logo.dart';
import 'nav_bar_item.dart';
import 'package:sdk_school/globals.dart' as globals;
import 'package:google_fonts/google_fonts.dart';


class NavBarTabletDesktop extends StatelessWidget {
   final bool Logged;
   NavBarTabletDesktop({Key? key, required this.Logged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo( navigationPath: HomeRoute,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem("Blog", SettingsRoute),
              SizedBox(width: 80,),
              NavBarItem("Buy", BuyRoute),
              SizedBox(width: 80,),
              //logoutButton(),
              NavBarItem("Sign in", SignInRoute),
              SizedBox(width: 80,),
              NavBarItem("Cart", CartRoute),
            ],
          )
        ],
      ),
    );
  }
}

// Widget logoutButton(){
//   return globals.isLogedIn == true ? NavBarItem('Logout', HomeRoute) : NavBarItem("Sign In", SignInRoute);
// }
