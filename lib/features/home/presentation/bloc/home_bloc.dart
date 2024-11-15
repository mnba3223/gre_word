import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<InitializeHome>(_onInitializeHome);
  }

  Future<void> _onInitializeHome(
    InitializeHome event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      // 這裡可以加入一些初始化邏輯
      emit(state.copyWith(
        status: HomeStatus.success,
        message: 'Initialize Success',
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        message: e.toString(),
      ));
    }
  }
}
