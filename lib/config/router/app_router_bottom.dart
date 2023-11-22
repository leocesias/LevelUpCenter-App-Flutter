// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:game_mentor/screens/screens.dart';

class AppRouterBottom extends StatelessWidget {
  final int index;

  const AppRouterBottom({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const HomeScreen(),
      const CoachesScreen(),
      const AllCoaches(),
      const InfoCoach(),
      const ReserveCoach(),
      const GamesScreen(),
      const ActivitiesScreen(),
      const ProfileConfig(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: myList,
      ),
    );
  }
}
