import 'package:counter_with_cubit/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  int counter = 0;

  add() async {
    emit(CounterLoadingState());
    await Future.delayed(Duration(seconds: 1));
    counter++;
    emit(CounterUpdatedState());
  }

  remove() {
    counter--;
    emit(CounterUpdatedState());
  }

  reset() {
    counter = 0;
    emit(CounterResetState(3));
  }

  login() {
    // emit loading
    // await api
    // emit success
    // or emit error
  }
}
