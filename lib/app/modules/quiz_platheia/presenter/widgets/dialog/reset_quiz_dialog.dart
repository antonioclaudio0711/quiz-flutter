import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/store/quiz_platheia_store.dart';
import 'package:quiz_platheia/app/utils/routes.dart';

class ResetQuizDialog extends StatelessWidget {
  const ResetQuizDialog({
    super.key,
    required this.store,
  });

  final QuizPlatheiaStore store;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.purple.shade600,
      child: SizedBox(
        width: 50,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sua pontuação:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '0${store.state.pointsNumber}/05 pontos',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                store.resetGame();
                Modular.to.pushNamed(Routes.initialRoute);
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'SAIR',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
