import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({Key? key,
  required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
