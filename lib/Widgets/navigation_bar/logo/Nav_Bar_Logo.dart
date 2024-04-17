import 'package:flutter/material.dart';

import '../../../locator.dart';
import '../../../services/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;
  const NavBarLogo({Key? key,required this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Container(
        child:  SizedBox(height: 80, width: 150, child: Image.asset("lib/assets/Group_27.png"),
        ),
      ),
    );
  }
}
