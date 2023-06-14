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

  const QuizPlatheiaState({
    this.state = const QuizPlatheiaInitialState(),
  });

  QuizPlatheiaState copyWith({
    QuizPlatheiaBaseState? state,
  }) {
    return QuizPlatheiaState(
      state: state ?? this.state,
    );
  }

  @override
  List<Object?> get props => [
        state,
      ];
}
