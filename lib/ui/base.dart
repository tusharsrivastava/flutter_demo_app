import 'package:flutter/cupertino.dart';

abstract class ScreenBase extends StatelessWidget {
  final args;

  const ScreenBase({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context);
}
