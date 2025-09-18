import 'package:counter_with_cubit/bloc/counter_event.dart';
import 'package:counter_with_cubit/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterInitialState()) {
    on((event, emit) async {
      if (event is CounterAddEvent) {
        await addCounter(emit);
      } else if (event is CounterMinusEvent) {
        await remove(emit);
      }
    });
  }

  int counter = 0;

  addCounter(Emitter<CounterBlocState> emit) async {
    emit(CounterLoadingState());
    await Future.delayed(Duration(seconds: 1));
    counter++;
    emit(CounterUpdatedState());
  }

  remove(Emitter<CounterBlocState> emit) {
    counter--;
    emit(CounterUpdatedState());
  }

  reset(Emitter<CounterBlocState> emit) {
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
