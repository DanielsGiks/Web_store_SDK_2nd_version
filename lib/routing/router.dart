import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/home/home_view.dart';
import 'package:sdk_school/home/layout_template/layout_template.dart';
import 'package:sdk_school/home/layout_template/layout_template_loged_in.dart';
import 'package:sdk_school/home/logedIN/Home_View_when_loged_in.dart';
import 'package:sdk_school/home/logedIN/Home_view_desktop_when_loged.dart';
import 'package:sdk_school/routing/route_names.dart';
import 'package:sdk_school/sign_in/login_or_sign_in.dart';

import '../Blog/blog.dart';
import '../Buy/buy.dart';
import '../sign_in/sign_in_page.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name){
    case HomeRoute:
      return _getPageRoute(HomeView());
    case SettingsRoute:
      return _getPageRoute(BlogView());
    case BuyRoute:
      return _getPageRoute(BuyView());
    case SignInRoute:
      return _getPageRoute(LoginOrSignIn());
    // case HomeRouteLoged:
    //   return _getPageRoute(HomeViewDesktopLogedIn());
    case RouteLoged:
      return _getPageRoute(LayoutTemplateLoged());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child){
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({required this.child}):
      super(
        pageBuilder: (
        BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
        ) => child,
        transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
        ) => FadeTransition(opacity: animation, child: child,)
      );
}