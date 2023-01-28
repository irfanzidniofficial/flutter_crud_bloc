import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_bloc/app.dart';
import 'package:flutter_crud_bloc/general_observer.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(const App());
}
