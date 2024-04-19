import 'package:flutter/material.dart';
import 'package:sdk_school/Widgets/c2a/call_to_action.dart';

import '../Widgets/details/details.dart';
import '../Widgets/navigation_bar/logo/Nav_Bar_Logo.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Details(),
        SizedBox(height: 32,),
        Call_To_Action(title: "Buy Tickets")
      ],
    );
  }
}
