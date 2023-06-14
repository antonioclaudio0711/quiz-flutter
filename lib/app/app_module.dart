import 'package:flutter_modular/flutter_modular.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/quiz_platheia_module.dart';
import 'package:quiz_platheia/app/utils/routes.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Routes.initialRoute,
          module: QuizPlatheiaModule(),
        )
      ];
}
