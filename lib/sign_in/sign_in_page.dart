import 'dart:html';
import 'dart:js_util';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sdk_school/Widgets/components/my_button.dart';
import 'package:sdk_school/Widgets/components/my_textfield.dart';
import 'package:sdk_school/helper/helper_function.dart';
import 'package:sdk_school/home/layout_template/layout_template_loged_in.dart';
import 'package:sdk_school/routing/route_names.dart';
import 'package:sdk_school/services/firestore.dart';
import 'package:sdk_school/globals.dart' as globals;

import '../globals.dart';
import '../locator.dart';
import '../services/navigation_service.dart';

class SignIn extends StatefulWidget {
  final void Function()? onTap;
   SignIn({Key? key, required this.onTap}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // fireststore
  final FirestoreService firestoreService = FirestoreService();

  //text controller
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController emailController = TextEditingController();


  void login() async{
    showDialog(context: context, builder: (context) => Center(child: CircularProgressIndicator(),));

    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);

      if(context.mounted) {
        Navigator.of(context, rootNavigator: true).pop('dialog');
        setState(() {
          globals.isLogedIn = true;
        });
        //Future.delayed(const Duration(seconds: 1));
        //Navigator.popAndPushNamed(context, 'layoutLoged');
        // Navigator.pushNamed(
        //     context,
        //     MaterialPageRoute(builder: (context) =>  LayoutTemplateLoged(),));

        locator<NavigationService>().navigateTo(RouteLoged);
        //NavigationService();


      }
    }on FirebaseAuthException catch (e){
      Navigator.of(context, rootNavigator: true).pop('dialog');
      displayMessageToUser(e.code, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Image.asset(
          "lib/assets/Tourist girl.png",
          width: MediaQuery.of(context).size.width/2,
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.height / 1.2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.person_fill,
                        size: 128,
                      ),
                    ),
                    Text(
                      "F A K E B A L T I C",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Anton-Regular',
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                    height: 24,
                      ),
                    //Email textbox
                    MyTextField(
                        hintText: "E-mail",
                        obscureText: false,
                        controller: emailController),
                    SizedBox(
                      height: 25,
                    ),
                    //Password textbox
                    MyTextField(
                        hintText: "Password",
                        obscureText: true,
                        controller: passwordController),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyButton(text: "Sign In", onTap: login),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text(
                            "Register here",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    // Firebase - Add user
                    // ElevatedButton(onPressed: (){
                    //   firestoreService.addUser(emailController.text, passwordController.text);
                    //   emailController.clear();
                    //   passwordController.clear();
                    // }, child: Text("Sign in"),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
