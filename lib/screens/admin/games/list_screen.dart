import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/game/game.dart';
import 'package:game_mentor/services/game_service.dart';

class GameListScreen extends StatelessWidget {
  const GameListScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Game>>(
        future: fetchGames(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Game> games = snapshot.data!;
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(games[index].name),
                  subtitle: Text(games[index].description),
                );
              },
              separatorBuilder: (context, index) {
                // Divider widget for the separator
                return const Divider(
                  height: 10, // Adjust the height of the separator
                  color: Colors.grey,
                );
              },
            );
          }
          return const CircularProgressIndicator();
        });
  }
}
