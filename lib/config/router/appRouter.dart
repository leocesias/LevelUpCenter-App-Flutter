// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lookurclimb/src/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: HomeScreen.name,
    path: '/',
    pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    pageBuilder: (context, state) =>
        const MaterialPage(child: HomeScreen()),
  ),
  GoRoute(
    name: ActivitiesScreen.name,
    path: '/activities',
    pageBuilder: (context, state) =>
        const MaterialPage(child: ActivitiesScreen()),
  ),
  GoRoute(
    name: CoachesScreen.name,
    path: '/coaches',
    pageBuilder: (context, state) =>
        const MaterialPage(child: CoachesScreen()),
  ),
  GoRoute(
    name: ProfileConfig.name,
    path: '/profile',
    pageBuilder: (context, state) =>
        const MaterialPage(child: ProfileConfig()),
  ),
  GoRoute(
    name: VideogamesScreen.name,
    path: '/videogames',
    pageBuilder: (context, state) =>
        const MaterialPage(child: ActivitiesScreen()),
  ),
]);
