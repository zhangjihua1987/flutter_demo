import 'package:bloc/bloc.dart';
import 'package:flutter_demo/counter_app/counter_observer.dart';
import 'package:flutter_demo/counter_app/run.dart';
import 'package:flutter_demo/my_app_demo/index.dart' as app_demo;

void main() {
  Bloc.observer = const CounterObserver();
  run();
}
