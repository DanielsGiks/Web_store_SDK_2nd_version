import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/logo/Nav_Bar_Logo.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: const Icon(CupertinoIcons.arrow_right)),
          // ElevatedButton.icon(
          // onPressed: (){}, icon: Icon(Icons.abc), label: Text(""),
          // )
        ],
      ),
    );
  }
}
