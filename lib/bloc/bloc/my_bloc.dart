import 'package:automatictheme/bloc/bloc/bloc.dart';
import 'package:automatictheme/bloc/bloc/my_bloc_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_bloc_bloc.dart';

class MyBloc extends StatefulWidget {
    MyBloc({Key key}) : super(key: key);

  @override
  _MyBloc createState() => _MyBloc();
}

class _MyBloc extends State<MyBloc> {
  @override
  Widget build(BuildContext context) {
        final theBloc = BlocProvider.of<MyBlocBloc>(context);

    return BlocBuilder(
      bloc: theBloc,
      builder: (BuildContext context, MyBlocState state) {
        if(state is InitialMyBlocState)
        return Container();
      },
    );
  }
}
