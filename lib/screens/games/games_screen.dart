import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/game/game.dart';
import 'package:game_mentor/services/game_service.dart';
import 'package:game_mentor/widgets/games/game_item.dart';

class GamesScreen extends StatelessWidget {
  static const String name = 'games_screen';

  Future<List<Game>> fetchGames() async {
    try {
      final response = await GameService.getMany();
      List<Game> games = [];
      if (response.statusCode == 200) {
        for (var game in response.data!) {
          games.add(Game.fromJson(game));
        }
      }
      return games;
    } catch (e) {
      return [];
    }
  }

  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Game>>(
            future: fetchGames(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Game> games = snapshot.data!;
                return GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return GameItem(game: games[index]);
                  },
                );
              }
              return const CircularProgressIndicator();
            }));
  }
}
