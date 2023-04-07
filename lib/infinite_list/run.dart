import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/infinite_list/app.dart';
import 'package:flutter_demo/infinite_list/simple_bloc_observer.dart';

void run() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
