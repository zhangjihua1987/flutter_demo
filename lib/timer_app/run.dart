import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/timer_app/app.dart';
import 'package:flutter_demo/timer_app/timer_observer.dart';

void run() {
  Bloc.observer = TimerObserver();
  runApp(const App());
}
