// ignore_for_file: file_names
import 'package:GameMentor/config/theme/appTheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
}
