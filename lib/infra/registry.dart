import 'package:demo_app/infra/interfaces/irouter.dart';
import 'package:demo_app/infra/services/router.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class Registry {
  static final GetIt l = GetIt.instance;

  static Future<void> setup() async {
    Registry.l.registerLazySingleton<IRouter>(() => Router());
    Registry.l.registerLazySingleton<Logger>(() => Logger());
  }
}
