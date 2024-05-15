import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdk_school/cart/cart_page.dart';
import 'package:sdk_school/locator.dart';
import 'package:sdk_school/services/firestore.dart';
import 'package:sdk_school/services/navigation_service.dart';


class NavBarItemCart extends StatefulWidget {
  final String title;
 // final String navigationPath;


  const NavBarItemCart(this.title,

     // this.navigationPath
      );

  @override
  State<NavBarItemCart> createState() => _NavBarItemState();
}
class _NavBarItemState extends State<NavBarItemCart> {
  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).pushNamed('Buy');
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
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