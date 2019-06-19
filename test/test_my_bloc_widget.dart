import 'package:automatictheme/bloc/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockMyBlocBloc extends Mock implements MyBlocBloc {}

void main() {
  MockMyBlocBloc bloc;
  setUp(() {
    bloc = MockMyBlocBloc();
  });
  testWidgets('test MyBloc widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider(
        bloc:bloc,
        child: Container(),
      )
    );
  });
}
