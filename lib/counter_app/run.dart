import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/counter_app/app.dart';
import 'package:flutter_demo/counter_app/counter_observer.dart';

run() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
