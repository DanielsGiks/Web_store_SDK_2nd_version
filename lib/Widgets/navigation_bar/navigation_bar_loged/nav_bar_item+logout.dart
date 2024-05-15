import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdk_school/locator.dart';
import 'package:sdk_school/services/firestore.dart';
import 'package:sdk_school/services/navigation_service.dart';


class NavBarItemLogout extends StatefulWidget {
  final String title;
 // final String navigationPath;


  const NavBarItemLogout(this.title,

     // this.navigationPath
      );

  @override
  State<NavBarItemLogout> createState() => _NavBarItemState();
}
void logout(){
  final _authService = FirestoreService();
  _authService.signOut();
}
class _NavBarItemState extends State<NavBarItemLogout> {
  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).pushNamed('Buy');
    return GestureDetector(
      onTap: (){
        logout();
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