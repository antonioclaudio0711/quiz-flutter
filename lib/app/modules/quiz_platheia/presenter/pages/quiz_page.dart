import 'package:flutter/material.dart';
import '../store/quiz_platheia_store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/quiz_model.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
    required this.store,
  });

  final QuizPlatheiaStore store;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizPlatheiaStore get store => widget.store;

  @override
  void initState() {
    store.defineCorrectAnswer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple.shade300,
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Pontuação: 0',
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            BlocBuilder<QuizPlatheiaStore, QuizPlatheiaState>(
              bloc: store,
              builder: (context, state) {
                if (state.questionNumber == 1) {
                  return QuizModel(
                    store: store,
                    firstAlternative: 'A) Práticas racistas',
                    secondAlternative: 'B) dpvçnfçbnfçbof',
                    thirdAlternative: 'C) v´dobóbófjb´rj',
                    fourthAlternative: 'D) peovjpbojprob',
                    fifthAlternative: 'E) didivnknfbkiv',
                    textCard: 'Qual a temática principal do projeto PlaTheia?',
                  );
                } else if (state.questionNumber == 2) {
                  return QuizModel(
                    store: store,
                    firstAlternative: 'A) ',
                    secondAlternative: 'B) dpvçnfçbnfçbof',
                    thirdAlternative: 'C) Racismo',
                    fourthAlternative: 'D) peovjpbojprob',
                    fifthAlternative: 'E) didivnknfbkiv',
                    textCard: 'Qual o assunto principal do projeto PlaTheia?',
                  );
                } else {
                  return Column(
                    children: [
                      Text('data'),
                      ElevatedButton(
                          onPressed: () {
                            store.nextQuestion();
                            store.defineCorrectAnswer();
                            print(state.correctAnswer);
                          },
                          child: Column(
                            children: [
                              Text('data'),
                            ],
                          ))
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
