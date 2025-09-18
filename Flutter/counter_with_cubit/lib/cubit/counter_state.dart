class CounterState {}

class CounterInitialState extends CounterState {}

class CounterLoadingState extends CounterState {}

class CounterUpdatedState extends CounterState {}

class CounterResetState extends CounterState {
  final int counter;
  CounterResetState(this.counter);
}
