class CounterBlocState {}

class CounterInitialState extends CounterBlocState {}

class CounterLoadingState extends CounterBlocState {}

class CounterUpdatedState extends CounterBlocState {}

class CounterResetState extends CounterBlocState {
  final int counter;
  CounterResetState(this.counter);
}
