import 'package:flutter/material.dart';
import 'package:sdk_school/sign_in/register_page.dart';
import 'package:sdk_school/sign_in/sign_in_page.dart';

class LoginOrSignIn extends StatefulWidget {
  const LoginOrSignIn({Key? key}) : super(key: key);

  @override
  State<LoginOrSignIn> createState() => _LoginOrSignInState();
}

class _LoginOrSignInState extends State<LoginOrSignIn> {

  bool ShowLoginPage = true;

  void TogglePages(){
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(ShowLoginPage){
      return SignIn(onTap:TogglePages

      );
    }else return RegisterPage(onTap: TogglePages,);
  }
}
