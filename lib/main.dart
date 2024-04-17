import 'package:flutter/material.dart';
import 'package:sdk_school/home/layout_template/layout_template.dart';
import 'package:sdk_school/locator.dart';

import 'home/home_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FakeBaltic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Bebas Neue'),
      ),
      home: LayoutTemplate(),
    );
  }
}
