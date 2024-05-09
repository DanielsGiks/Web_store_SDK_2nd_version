import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/logo/Nav_Bar_Logo.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBarMobileLogedIn extends StatelessWidget {
  const NavBarMobileLogedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(CupertinoIcons.bars)),
          // ElevatedButton.icon(
          // onPressed: (){}, icon: Icon(Icons.abc), label: Text(""),
          // )
        ],
      ),
    );
  }
}
