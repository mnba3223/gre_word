import 'package:greword/features/greword/data/models/gre_word_model.dart';

abstract class GreWordState {}

class GreWordInitial extends GreWordState {}

class GreWordLoading extends GreWordState {}

class GreWordLoaded extends GreWordState {
  final GreWordData word;
  GreWordLoaded(this.word);
}

class GreWordError extends GreWordState {
  final String message;
  GreWordError(this.message);
}
