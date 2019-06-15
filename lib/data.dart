import 'package:automatictheme/app_theme.dart';
import 'package:automatictheme/my_theme.dart';
import 'package:flutter/material.dart';

List<AppTheme> myThemes = [
  AppTheme(
      'Default',
      MyTheme(
      brightness: Brightness.light,      
      primarySwatch: Colors.blue,      
      )),
  AppTheme(
    'Teal',
    MyTheme(
      brightness: Brightness.light,      
      primarySwatch: Colors.teal,      
    ),
  ),
  AppTheme(
    'Orange',
    MyTheme(
      brightness: Brightness.light,      
      primarySwatch: Colors.orange,      
    ),
  ),
  AppTheme(
    'Dark',
    MyTheme(
      brightness: Brightness.dark,      
      primarySwatch: Colors.blueGrey,      
    ),
  ),
];