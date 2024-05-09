import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/home/logedIN/Home_View_when_loged_in.dart';
import 'package:sdk_school/home/home_view.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return const HomeView();
          }
          else{
            return const HomeViewLogedIn();
          }
        } );
  }
}
