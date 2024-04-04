import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/navigation_bar/navigation_bar.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Navigation_Bar()
        ],
      )
    );
  }
}
