import 'package:GameMentor/src/domain/models/game/game.dart';
import 'package:GameMentor/src/services/game_service.dart';
import 'package:GameMentor/src/widgets/game/game_item.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  static const String name = 'games_screen';

  Future<List<Game>> fetchGames() async {
    try {
      final response = await GameService.getMany();
      return response.data.map<Game>((e) => Game.fromJson(e)).toList();
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
