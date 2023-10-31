import 'package:flutter/material.dart';

import '../../../coaching/domain/models/game/game.dart';

class GamesDetailsScreen extends StatelessWidget {
  static const String name = 'game_details_screen';
  final Game game;

  const GamesDetailsScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
      body: Container(
        child: Text('Games Screen'),
      ),
    );
  }
}
