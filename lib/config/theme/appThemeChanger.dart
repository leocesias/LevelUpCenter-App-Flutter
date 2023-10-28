// ignore_for_file: file_names

class AppThemeChanger {
  final bool isDarkMode;

  AppThemeChanger({this.isDarkMode = false});

  // ignore: empty_constructor_bodies
  AppThemeChanger copyWith({bool? isDarkMode}) => AppThemeChanger(
      isDarkMode: isDarkMode ?? this.isDarkMode);
}