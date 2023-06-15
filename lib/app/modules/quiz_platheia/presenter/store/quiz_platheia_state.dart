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
  final bool isRight;

  const QuizPlatheiaState({
    this.state = const QuizPlatheiaInitialState(),
    this.selectedText = '',
    this.questionNumber = 1,
    this.correctAnswer = '',
    this.isRight = false,
  });

  QuizPlatheiaState copyWith({
    QuizPlatheiaBaseState? state,
    String? selectedText,
    int? questionNumber,
    String? correctAnswer,
    bool? isRight,
  }) {
    return QuizPlatheiaState(
      state: state ?? this.state,
      selectedText: selectedText ?? this.selectedText,
      questionNumber: questionNumber ?? this.questionNumber,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      isRight: isRight ?? this.isRight,
    );
  }

  @override
  List<Object?> get props => [
        state,
        selectedText,
        questionNumber,
        correctAnswer,
        isRight,
      ];
}
