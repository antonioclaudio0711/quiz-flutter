import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'quiz_platheia_state.dart';

class QuizPlatheiaStore extends Cubit<QuizPlatheiaState> {
  QuizPlatheiaStore() : super(const QuizPlatheiaState());
}
