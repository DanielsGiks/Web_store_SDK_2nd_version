import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sdk_school/Widgets/components/my_button.dart';
import 'package:sdk_school/Widgets/components/my_textfield.dart';
import 'package:sdk_school/services/firestore.dart';

import '../helper/helper_function.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
   RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // fireststore
  final FirestoreService firestoreService = FirestoreService();

  //text controller
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController repeatPasswordController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  void registerUser() async{
    // show loading circle
    showDialog(context: context,
        builder: (context) => Center(child: CircularProgressIndicator(),));

    // Make sure passwords match
    //Future.delayed(Duration(seconds: 1));
    if(passwordController.text != repeatPasswordController.text){
     // Navigator.pop(context);
      Navigator.of(context, rootNavigator: true).pop('dialog');
      // Display error message
      displayMessageToUser("Passwords don't match", context);
    } else{
      try{
        UserCredential? userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text,);
        //Navigator.pop(context);
        Navigator.of(context, rootNavigator: true).pop('dialog');
        displayMessageToUser("Success, you have created an account!", context);

      } on FirebaseAuthException catch (e) {
        //Navigator.pop(context);
        Navigator.of(context, rootNavigator: true).pop('dialog');

        displayMessageToUser(e.code, context);
      }
    }

    //try registering the user

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
              //height: MediaQuery.of(context).size.height / 1.2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
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
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Spacer(),
                    //Email textbox
                    MyTextField(
                        hintText: "Name",
                        obscureText: false,
                        controller: nameController),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Spacer(),
                    //Email textbox
                    MyTextField(
                        hintText: "E-mail",
                        obscureText: false,
                        controller: emailController),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Spacer(),
                    //Password textbox
                    MyTextField(
                        hintText: "Password",
                        obscureText: true,
                        controller: repeatPasswordController),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Spacer(),
                    //Password textbox
                    MyTextField(
                        hintText: "Repeat Password",
                        obscureText: true,
                        controller: passwordController),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Spacer(),
                    MyButton(
                        text: "Register", onTap: registerUser),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text(
                            "Login here",
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
