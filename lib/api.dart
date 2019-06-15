import 'package:automatictheme/data.dart';

class Api {
 Map<String, dynamic> getTheme(String themeName) {
    var selectedTheme = myThemes.firstWhere((n) => n.name == themeName);
    return selectedTheme.toJson();
  }
}
