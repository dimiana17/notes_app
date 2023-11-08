// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
class SimpleBlocObserver implements BlocObserver 
{
  @override
  void onEvent(Bloc bloc, Object? event) {
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
  }
  
  @override
  void onClose(BlocBase bloc) {
  }
  
  @override
  void onCreate(BlocBase bloc) {
  }
}