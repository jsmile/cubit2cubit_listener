import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // int incrementSize = 1;   // param으로 전달됨으로 불필요.

  CounterCubit() : super(CounterState.initial());

  // 상태를 변화시키는(emit) 메서드 정의 + 상태 변화에 필요한 param 선언 및 정의
  void changeCounter(int incrementSize) {
    emit(state.copyWith(counter: state.counter + incrementSize));
  }
}
