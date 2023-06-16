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
          correctAnswer: 'D) Preço abusivo dos ingressos',
        ));
        break;

      case 2:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer: 'E) Lei Geral de Proteção de Dados (LGPD)',
        ));
        break;

      case 3:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer:
              'D) Identificar o torcedor infrator para que medidas restritivas/administrativas sejam tomadas com o intuito de promover a paz e a boa convivência nos eventos esportivos',
        ));
        break;

      case 4:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer:
              'E) Sim, pois além de todo o banco de dados ter sido desenvolvido para esse suporte, todo o sistema foi pensado para que, independente do local, o software possa atender mais de um evento ao mesmo tempo.',
        ));
        break;

      case 5:
        emit(state.copyWith(
          state: const QuizPlatheiaSuccessState(),
          correctAnswer:
              'C) Utilizando o cruzamento de informações relacionadas ao reporte (data, horário, local, evento, usuário)',
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

  void incrementPoints({required int pointsNumber}) {
    emit(state.copyWith(
      state: const QuizPlatheiaSuccessState(),
      pointsNumber: state.pointsNumber + 1,
    ));
  }

  void resetGame() {
    emit(state.copyWith(
      state: const QuizPlatheiaSuccessState(),
      selectedText: '',
      questionNumber: 1,
      pointsNumber: 0,
    ));
  }
}
