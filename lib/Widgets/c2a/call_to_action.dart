import 'package:flutter/material.dart';


class Call_To_Action extends StatelessWidget {
  final String title;
  Call_To_Action({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(color: Color(0xffFFC727),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ));
  }
}
