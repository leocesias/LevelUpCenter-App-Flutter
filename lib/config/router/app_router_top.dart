// ignore_for_file: file_names

import 'package:game_mentor/screens/theme/theme_changer.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: ThemeChangerScreen.name,
    path: '/theme-changer',
    builder: (context, state) => const ThemeChangerScreen(),
  ),
]);
