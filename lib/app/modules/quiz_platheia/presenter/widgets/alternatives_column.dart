import 'package:flutter/cupertino.dart';
import 'package:quiz_platheia/app/modules/quiz_platheia/presenter/store/quiz_platheia_store.dart';

import 'cards/alternative_card.dart';

class AlternativesColumn extends StatelessWidget {
  const AlternativesColumn({
    super.key,
    required this.store,
    required this.firstAlternative,
    required this.secondAlternative,
    required this.thirdAlternative,
    required this.fourthAlternative,
    required this.fifthAlternative,
  });

  final QuizPlatheiaStore store;
  final String firstAlternative;
  final String secondAlternative;
  final String thirdAlternative;
  final String fourthAlternative;
  final String fifthAlternative;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AlternativeCard(
          textCard: firstAlternative,
          store: store,
        ),
        AlternativeCard(
          textCard: secondAlternative,
          store: store,
        ),
        AlternativeCard(
          textCard: thirdAlternative,
          store: store,
        ),
        AlternativeCard(
          textCard: fourthAlternative,
          store: store,
        ),
        AlternativeCard(
          textCard: fifthAlternative,
          store: store,
        ),
      ],
    );
  }
}
