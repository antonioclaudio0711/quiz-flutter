import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.questionNumber,
    required this.textCard,
  });

  final String questionNumber;
  final String textCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.only(bottom: 30.0),
        shadowColor: Colors.black,
        elevation: 5,
        color: const Color.fromARGB(255, 233, 208, 243),
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
                'Questão $questionNumber:',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                textCard,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
