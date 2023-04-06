import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter_demo/counter_app/counter/view/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView()
    );
  }

  
}
