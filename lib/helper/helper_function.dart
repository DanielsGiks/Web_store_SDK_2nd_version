import 'package:flutter/material.dart';

void displayMessageToUser(String message, BuildContext context ){
showDialog(context: context, builder: (context) => Padding(
  padding:  EdgeInsets.all(16.0),
  child: AlertDialog(
    title: Text(message),
  ),
));
}