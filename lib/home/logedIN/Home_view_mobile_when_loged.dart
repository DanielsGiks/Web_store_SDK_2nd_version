import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/c2a/call_to_action.dart';

import '../../Widgets/details/details.dart';

class HomeViewMobileLogedIn extends StatelessWidget {
  const HomeViewMobileLogedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Details(),
        SizedBox(height: 32,),
        Call_To_Action(title: "NOW YOU CAN Buy Tickets")
      ],
    );
  }
}
