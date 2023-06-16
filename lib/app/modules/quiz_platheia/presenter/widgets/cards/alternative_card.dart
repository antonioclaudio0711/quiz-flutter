import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/widgets/dialog/quiz_dialog.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/widgets/dialog/reset_quiz_dialog.dart';

import '../../store/quiz_platheia_store.dart';

class AlternativeCard extends StatefulWidget {
  const AlternativeCard({
    super.key,
    required this.textCard,
    required this.store,
  });

  final String textCard;
  final QuizPlatheiaStore store;

  @override
  State<AlternativeCard> createState() => _AlternativeCardState();
}

class _AlternativeCardState extends State<AlternativeCard> {
  String get textCard => widget.textCard;
  QuizPlatheiaStore get store => widget.store;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        store.selectAlternativeText(selectedText: textCard);

        if (store.state.selectedText == store.state.correctAnswer) {
          store.incrementPoints(pointsNumber: store.state.pointsNumber);

          if (store.state.questionNumber != 5) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => QuizDialog(
                dialogBackgroundColor: const Color.fromARGB(255, 136, 211, 139),
                borderButtonColor: const Color.fromARGB(255, 50, 165, 58),
                icon: Icons.check_box,
                onTapFunction: () {
                  store.nextQuestion();
                  store.defineCorrectAnswer();

                  Modular.to.pop();
                },
                textButton: 'Próxima questão',
              ),
            );
          } else {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => QuizDialog(
                dialogBackgroundColor: const Color.fromARGB(255, 136, 211, 139),
                borderButtonColor: const Color.fromARGB(255, 50, 165, 58),
                icon: Icons.check_box,
                onTapFunction: () {
                  showDialog(
                    context: context,
                    builder: (context) => ResetQuizDialog(store: store),
                  );
                },
                textButton: 'Terminar QUIZ',
              ),
            );
          }
        } else {
          if (store.state.questionNumber != 5) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => QuizDialog(
                dialogBackgroundColor: const Color.fromARGB(255, 231, 112, 104),
                borderButtonColor: const Color.fromARGB(255, 238, 72, 61),
                icon: Icons.close_outlined,
                onTapFunction: () {
                  store.nextQuestion();
                  store.defineCorrectAnswer();

                  Modular.to.pop();
                },
                textButton: 'Próxima questão',
              ),
            );
          } else {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => QuizDialog(
                dialogBackgroundColor: const Color.fromARGB(255, 231, 112, 104),
                borderButtonColor: const Color.fromARGB(255, 238, 72, 61),
                icon: Icons.close_outlined,
                onTapFunction: () {
                  showDialog(
                    context: context,
                    builder: (context) => ResetQuizDialog(store: store),
                  );
                },
                textButton: 'Terminar QUIZ',
              ),
            );
          }
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 50,
        child: BlocBuilder<QuizPlatheiaStore, QuizPlatheiaState>(
          bloc: store,
          builder: (context, state) {
            return Card(
              margin: const EdgeInsets.only(bottom: 20.0),
              color: const Color.fromARGB(255, 213, 211, 214),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  right: 8.0,
                  bottom: 15.0,
                  left: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.textCard,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
