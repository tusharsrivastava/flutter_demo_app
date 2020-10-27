import 'package:demo_app/infra/registry.dart';
import 'package:demo_app/ui/root.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Registry.setup();
  var logger = Registry.l.get<Logger>();
  FlutterError.onError = _onError;

  logger.d("App Initialized");
  runApp(Root());
}

_onError(FlutterErrorDetails error) {
  var logger = Registry.l.get<Logger>();
  logger.e(error);
}
