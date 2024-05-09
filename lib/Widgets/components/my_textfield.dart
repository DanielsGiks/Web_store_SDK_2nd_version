import 'dart:ui';

import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const MyTextField({Key? key,
  required this.hintText,
  required this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorHeight: 12,

      selectionHeightStyle: BoxHeightStyle.tight,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,

        border: OutlineInputBorder(

        ),
      ),
    );
  }
}
