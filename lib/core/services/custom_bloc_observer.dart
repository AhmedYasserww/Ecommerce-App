import 'dart:developer';

import 'package:bloc/bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('Bloc: ${bloc.runtimeType}, Old State: ${change.currentState}, New State: ${change.nextState}');
  }
  
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('Bloc: ${bloc.runtimeType}, Error: $error');
  }
}