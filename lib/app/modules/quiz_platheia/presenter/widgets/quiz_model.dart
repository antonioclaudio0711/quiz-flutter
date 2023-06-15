import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/store/quiz_platheia_store.dart';

import 'alternatives_column.dart';
import 'cards/question_card.dart';

class QuizModel extends StatelessWidget {
  const QuizModel({
    super.key,
    required this.store,
    required this.textCard,
    required this.firstAlternative,
    required this.secondAlternative,
    required this.thirdAlternative,
    required this.fourthAlternative,
    required this.fifthAlternative,
  });

  final QuizPlatheiaStore store;

  final String textCard;
  final String firstAlternative;
  final String secondAlternative;
  final String thirdAlternative;
  final String fourthAlternative;
  final String fifthAlternative;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<QuizPlatheiaStore, QuizPlatheiaState>(
          bloc: store,
          builder: (context, state) {
            return QuestionCard(
              questionNumber: state.questionNumber.toString(),
              textCard: textCard,
            );
          },
        ),
        AlternativesColumn(
          store: store,
          firstAlternative: firstAlternative,
          secondAlternative: secondAlternative,
          thirdAlternative: thirdAlternative,
          fourthAlternative: fourthAlternative,
          fifthAlternative: fifthAlternative,
        ),
      ],
    );
  }
}
