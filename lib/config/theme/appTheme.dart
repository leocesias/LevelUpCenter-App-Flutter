// ignore_for_file: file_names

class AppTheme {
  final bool isDarkMode;

  AppTheme({this.isDarkMode = false});

  // ignore: empty_constructor_bodies
  AppTheme copyWith({bool? isDarkMode}) => AppTheme(
      isDarkMode: isDarkMode ?? this.isDarkMode);
}