// ignore_for_file: file_names

import 'package:GameMentor/src/screens/themeChanger/themechanger.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: ThemeChangerScreen.name,
    path: '/theme-changer',
    builder: (context, state) => const ThemeChangerScreen(),
  ),
]);
