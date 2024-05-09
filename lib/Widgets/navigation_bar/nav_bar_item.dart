import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdk_school/locator.dart';
import 'package:sdk_school/services/navigation_service.dart';


class NavBarItem extends StatefulWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(this.title, this.navigationPath);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).pushNamed('Buy');
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(widget.navigationPath);
        Scaffold.of(context).closeDrawer();
      },
      child: Text(widget.title,
          style: GoogleFonts.bebasNeue(
              letterSpacing: 2,
              fontSize: 16,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}