import 'package:flutter/material.dart';
import 'package:sdk_school/home/layout_template/layout_template.dart';
import 'package:sdk_school/home/layout_template/layout_template_loged_in.dart';
import 'package:sdk_school/sign_in/register_page.dart';
import 'package:sdk_school/sign_in/sign_in_page.dart';
import 'package:sdk_school/globals.dart' as globals;

import '../../globals.dart';
import '../home_view.dart';

class LoginOrSignInLayout extends StatefulWidget {
  const LoginOrSignInLayout({Key? key}) : super(key: key);

  @override
  State<LoginOrSignInLayout> createState() => _LoginOrSignInState();
}
class _LoginOrSignInState extends State<LoginOrSignInLayout> {

  bool ShowLoginLayout = false;

  // void TogglePages(){
  //   setState(() {
  //     isLogedIn = !isLogedIn;
  //     ShowLoginLayout = !ShowLoginLayout;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    // if(globals.isLogedIn){
    //   return LayoutTemplateLoged();
    // }else{
    //   LayoutTemplate();
    // }
    switch (globals.isLogedIn) {
      case true:
        return LayoutTemplateLoged();
      default:
        return LayoutTemplate();
    }
  }
  }
