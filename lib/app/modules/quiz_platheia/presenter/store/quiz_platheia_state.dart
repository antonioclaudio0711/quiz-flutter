part of 'quiz_platheia_store.dart';

abstract class QuizPlatheiaBaseState extends Equatable {
  const QuizPlatheiaBaseState();
}

class QuizPlatheiaInitialState extends QuizPlatheiaBaseState {
  const QuizPlatheiaInitialState();

  @override
  List<Object?> get props => [];
}

class QuizPlatheiaSuccessState extends QuizPlatheiaBaseState {
  const QuizPlatheiaSuccessState();

  @override
  List<Object?> get props => [];
}

class QuizPlatheiaFailureState extends QuizPlatheiaBaseState {
  const QuizPlatheiaFailureState();

  @override
  List<Object?> get props => [];
}

class QuizPlatheiaLoadingState extends QuizPlatheiaBaseState {
  const QuizPlatheiaLoadingState();

  @override
  List<Object?> get props => [];
}

class QuizPlatheiaState extends Equatable {
  final QuizPlatheiaBaseState state;
  final String selectedText;
  final int questionNumber;
  final String correctAnswer;
  final int pointsNumber;

  const QuizPlatheiaState({
    this.state = const QuizPlatheiaInitialState(),
    this.selectedText = '',
    this.questionNumber = 1,
    this.correctAnswer = '',
    this.pointsNumber = 0,
  });

  QuizPlatheiaState copyWith({
    QuizPlatheiaBaseState? state,
    String? selectedText,
    int? questionNumber,
    String? correctAnswer,
    int? pointsNumber,
  }) {
    return QuizPlatheiaState(
      state: state ?? this.state,
      selectedText: selectedText ?? this.selectedText,
      questionNumber: questionNumber ?? this.questionNumber,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      pointsNumber: pointsNumber ?? this.pointsNumber,
    );
  }

  @override
  List<Object?> get props => [
        state,
        selectedText,
        questionNumber,
        correctAnswer,
        pointsNumber,
      ];
}
