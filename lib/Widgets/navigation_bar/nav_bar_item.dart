import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.bebasNeue(
            letterSpacing: 2,
            fontSize: 16,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            )));
  }
}