// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

class CounterState extends Equatable {
  const CounterState({this.counter = 0});

  final int counter;

  @override
  List<Object> get props => [counter];
}

