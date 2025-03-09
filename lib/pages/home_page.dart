import 'package:day6/logics/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(child: Text("You have pressed ${state.counter} times"));
        },
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 8,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),

            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
