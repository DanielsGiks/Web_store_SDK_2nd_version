import 'package:flutter/material.dart';

import '../../Widgets/c2a/call_to_action.dart';
import '../../Widgets/details/details.dart';

class HomeViewDesktopLogedIn extends StatefulWidget {
  const HomeViewDesktopLogedIn({Key? key}) : super(key: key);

  @override
  State<HomeViewDesktopLogedIn> createState() => _HomeViewDesktopLogedInState();
}

class _HomeViewDesktopLogedInState extends State<HomeViewDesktopLogedIn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Details(),
            SizedBox(height: 48,),
            Call_To_Action(title: "NOW YOU CAN Buy tickets"),
          ],
        ),
        Expanded(
            flex: 2,
            child: Image.asset("lib/assets/Tourist girl.png", width: MediaQuery.of(context).size.width/1.2,)),
      ],
    );
  }
}
