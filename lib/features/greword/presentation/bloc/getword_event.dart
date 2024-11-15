abstract class GreWordEvent {}

class LoadGreWord extends GreWordEvent {}

class PlayWordSound extends GreWordEvent {
  final String word;
  PlayWordSound(this.word);
}
