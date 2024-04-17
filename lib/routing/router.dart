import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/home/home_view.dart';
import 'package:sdk_school/routing/route_names.dart';

import '../Blog/blog.dart';
import '../Buy/buy.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name){
    case HomeRoute:
      return _getPageRoute(HomeView());
    case SettingsRoute:
      return _getPageRoute(BlogView());
    case BuyRoute:
      return _getPageRoute(BuyView());
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