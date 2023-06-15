import 'package:flutter_modular/flutter_modular.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/pages/initial_page.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/pages/quiz_page.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/store/quiz_platheia_store.dart';
import 'package:quiz_platheia/app/utils/routes.dart';

class QuizPlatheiaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => QuizPlatheiaStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.initialRoute,
          child: (context, args) => const InitialPage(),
        ),
        ChildRoute(
          Routes.quizPageRoute,
          child: (context, args) => QuizPage(store: context.read()),
        )
      ];
}
