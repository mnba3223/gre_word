// lib/features/greword/presentation/bloc/getword_bloc.dart
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../../data/repositories/gre_repository.dart';
import 'getword_event.dart';
import 'getword_state.dart';

class GreWordBloc extends Bloc<GreWordEvent, GreWordState> {
  final GreWordRepository _repository;
  final FlutterTts _flutterTts = FlutterTts();
  Timer? _clickTimer;
  bool _isFirstTap = true;

  GreWordBloc(this._repository) : super(GreWordInitial()) {
    on<LoadGreWord>(_onLoadGreWord);
    on<PlayWordSound>(_onPlayWordSound);
  }

  Future<void> _onLoadGreWord(
    LoadGreWord event,
    Emitter<GreWordState> emit,
  ) async {
    emit(GreWordLoading());
    try {
      final word = await _repository.getRandomWord();
      emit(GreWordLoaded(word));
      _isFirstTap = true;
    } catch (e) {
      print('Error in bloc: $e');
      emit(GreWordError(e.toString()));
    }
  }

  Future<void> _onPlayWordSound(
    PlayWordSound event,
    Emitter<GreWordState> emit,
  ) async {
    if (_isFirstTap) {
      await _flutterTts.speak(event.word);
      _isFirstTap = false;

      _clickTimer?.cancel();
      _clickTimer = Timer(const Duration(seconds: 2), () {
        _isFirstTap = true;
      });
    } else {
      _clickTimer?.cancel();
      add(LoadGreWord());
    }
  }

  @override
  Future<void> close() {
    _clickTimer?.cancel();
    _flutterTts.stop();
    return super.close();
  }
}
