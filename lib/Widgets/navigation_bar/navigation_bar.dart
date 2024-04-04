import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 80, width: 150, child: Image.asset("lib/assets/Group_27.png"),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem("Settings"),
              SizedBox(width: 80,),
              _NavBarItem("Buy"),
              SizedBox(width: 80,),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: GoogleFonts.bebasNeue(
      letterSpacing: 2,
        textStyle: TextStyle(
      fontWeight: FontWeight.bold,
    )));
  }
}

