// ignore_for_file: file_names
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_mentor/config/theme/app_theme_changer.dart';

final themNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppThemeChanger>(
        (ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppThemeChanger> {
  //STATE = new AppTheme()
  ThemeNotifier() : super(AppThemeChanger());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
}
