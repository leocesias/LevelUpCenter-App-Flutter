import 'package:GameMentor/src/domain/models/game/game.dart';
import 'package:GameMentor/src/screens/games/game_details_screen.dart';
import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  final Game game;

  const GameItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => GamesDetailsScreen(
                      game: game,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(game.splashUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
      ),
    );
  }
}
