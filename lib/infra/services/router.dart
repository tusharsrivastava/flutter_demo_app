import 'package:demo_app/infra/interfaces/irouter.dart';
import 'package:demo_app/ui/about/about.dart';
import 'package:demo_app/ui/error/error.dart';
import 'package:demo_app/ui/home/home.dart';
import 'package:flutter/material.dart';

class Router implements IRouter {
  @override
  Route register(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(args: settings.arguments));
      case 'about':
        return MaterialPageRoute(
            builder: (_) => AboutScreen(args: settings.arguments));
      default:
        return MaterialPageRoute(
            builder: (_) => ErrorScreen(args: {'error': 'No Route Defined'}));
    }
  }
}
