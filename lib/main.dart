import 'package:automatictheme/api.dart';
import 'package:flutter/material.dart';
import 'package:automatictheme/app_theme.dart';

void main() async => runApp(MyApp(appTheme: fetchAppTheme()));

class MyApp extends StatelessWidget {
  final AppTheme appTheme;

  MyApp({Key key, this.appTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTheme.name,
        theme: _buildThemeData(appTheme),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: Text(appTheme.name),
          ),
        ));
  }

  _buildThemeData(AppTheme appTheme) {
    return ThemeData(
        brightness: appTheme.theme.brightness,
        primarySwatch: appTheme.theme.primarySwatch);
  }
}

AppTheme fetchAppTheme() {
  //Default/Teal/Orange/Dark
  final response = new Api().getTheme('Orange');
  if (response == null)
    throw Exception('Failed to load theme');
  else {
    var res = AppTheme.fromJson(response);
    return res;
  }
}
