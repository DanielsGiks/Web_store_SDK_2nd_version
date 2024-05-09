import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';
import 'package:sdk_school/home/layout_template/layout_template.dart';
import 'package:sdk_school/home/layout_template/layout_template_loged_in.dart';
import 'package:sdk_school/home/layout_template/loged_notLoged.dart';
import 'package:sdk_school/locator.dart';
import 'package:sdk_school/routing/route_names.dart';
import 'globals.dart' as globals;

import 'firebase_options.dart';
import 'home/home_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //globals.isLogedIn = false;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupLocator();
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => FakeBaltic()),
      ],
        child: const MyApp(),
      ),
      );
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // callback(varLoged){
  //   setState(() {
  //     globals.isLogedIn = varLoged;
  //     if(varLoged){
  //       return LayoutTemplateLoged();
  //     }
  //   });
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
        'layoutLoged': (context) =>  LayoutTemplateLoged(),},
      title: 'FakeBaltic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Bebas Neue'),
      ),
      home: LayoutTemplate()
    );
  }
}

// class LogedOrNot {
//     if(globals.isLogedIn == true) {
//       return LayoutTemplateLoged();
//     }
//     else {
//      return LayoutTemplate();
//     }
//   }
