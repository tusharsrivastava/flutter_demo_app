import 'package:demo_app/infra/interfaces/irouter.dart';
import 'package:demo_app/infra/registry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      navigatorKey: Get.key,
      onGenerateRoute: Registry.l.get<IRouter>().register,
    );
  }
}
