import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/counter/counter_app.dart';
import 'package:flutter_bloc_app/counter/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(CounterApp());
}
