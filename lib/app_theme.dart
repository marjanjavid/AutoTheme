
import 'package:automatictheme/my_theme.dart';

class AppTheme {
  String name;
  MyTheme theme;
  AppTheme(this.name, this.theme);

  AppTheme.fromJson(Map<String, dynamic> json):
  name = json['name'],
  theme = MyTheme.fromJson(json['theme']);

//this a json we get from api
  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'theme': theme.toJson(),
    };
}


