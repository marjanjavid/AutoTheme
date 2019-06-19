import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class MyBlocBloc extends Bloc<MyBlocEvent, MyBlocState> {
  @override
  MyBlocState get initialState => InitialMyBlocState();

  @override
  Stream<MyBlocState> mapEventToState(
    MyBlocEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
