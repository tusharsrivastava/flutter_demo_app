import 'package:flutter/cupertino.dart';

abstract class IRouter {
  Route<dynamic> register(RouteSettings settings);
}
