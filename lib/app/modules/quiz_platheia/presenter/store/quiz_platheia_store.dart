import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'quiz_platheia_state.dart';

class QuizPlatheiaStore extends Cubit<QuizPlatheiaState> {
  QuizPlatheiaStore() : super(const QuizPlatheiaState());

  void selectAlternativeText({required String selectedText}) {
    emit(state.copyWith(
      state: const QuizPlatheiaSuccessState(),
      selectedText: selectedText,
    ));
  }

  void nextQuestion() {
    emit(state.copyWith(
      state: const QuizPlatheiaSuccessState(),
      questionNumber: state.questionNumber + 1,
    ));
  }

  void defineCorrectAnswer() {
    switch (state.questionNumber) {
      case 1:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'A) Práticas racistas',
        ));
        break;

      case 2:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'B) dsivbspib',
        ));
        break;

      case 3:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'C) woevbwoe',
        ));
        break;

      case 4:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'D)]sdoçlbçof',
        ));
        break;

      case 5:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'A) ~wodivkpdi',
        ));
        break;

      default:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: '',
        ));
        break;
    }
  }
}
