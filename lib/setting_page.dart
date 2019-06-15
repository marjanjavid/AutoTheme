import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: _settingTheme(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Setting Page"),
          ),
          body: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ),
        ));
  }

  _settingTheme() {
    return ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red);
  }
}
