import 'package:counter_with_cubit/bloc/counter_bloc.dart';
import 'package:counter_with_cubit/bloc/counter_event.dart';
import 'package:counter_with_cubit/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        body: BlocConsumer<CounterBloc, CounterBlocState>(
          listener: (context, state) {
            if (state is CounterLoadingState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Loading...')));
            }
          },
          builder: (context, state) {
            var bloc = context.read<CounterBloc>();
            if (state is CounterLoadingState) {
              return Center(child: CircularProgressIndicator());
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bloc.counter.toString(), style: TextStyle(fontSize: 50)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          bloc.add(CounterAddEvent());
                        },
                        icon: Icon(Icons.add),
                      ),
                      IconButton.filled(
                        onPressed: () {
                          bloc.add(CounterMinusEvent());
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
