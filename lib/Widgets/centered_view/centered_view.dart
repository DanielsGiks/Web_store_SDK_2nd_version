import 'package:flutter/material.dart';

class Centered_View extends StatelessWidget {
  final Widget child;
   Centered_View({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      alignment: Alignment.center,
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
      child: child,),
    );
  }
}
