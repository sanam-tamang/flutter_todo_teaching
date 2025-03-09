// import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int _counter = 0;
  CounterCubit() : super(CounterState());



  void increment() {
    _counter++;
    emit(CounterState(counter: _counter));
  }

  void decrement() {
    _counter--;
    emit(CounterState(counter: _counter));
  }
}
