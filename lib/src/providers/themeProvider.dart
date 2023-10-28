// ignore_for_file: file_names
import 'package:GameMentor/config/theme/appThemeChanger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppThemeChanger>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppThemeChanger> {
  //STATE = new AppTheme()
  ThemeNotifier() : super(AppThemeChanger());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
}
