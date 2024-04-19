import 'package:flutter/material.dart';

import '../Widgets/c2a/call_to_action.dart';
import '../Widgets/details/details.dart';

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

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
    Call_To_Action(title: "Buy tickets"),
    ],
    ),
    Expanded(
      flex: 2,
        child: Image.asset("lib/assets/Tourist girl.png", width: MediaQuery.of(context).size.width/1.2,)),
    ],
    );
  }
}
