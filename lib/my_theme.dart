import 'package:flutter/material.dart';

class MyTheme {
  Brightness brightness;
  MaterialColor primarySwatch;

  MyTheme({
    this.brightness,
    this.primarySwatch,
  });

  MyTheme.fromJson(Map<String, dynamic> json)
      : brightness = json['brightness'],
        primarySwatch = json['primarySwatch'];

  Map<String, dynamic> toJson() => {
        'brightness': brightness,
        'primarySwatch': primarySwatch,
      };
}
