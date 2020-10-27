import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorScreen extends StatelessWidget {
  final Map<String, dynamic> args;

  const ErrorScreen({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Error Screen"),
            Text(args['error']),
            FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
