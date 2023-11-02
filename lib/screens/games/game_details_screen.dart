import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/game/game.dart';

class GamesDetailsScreen extends StatelessWidget {
  static const String name = 'game_details_screen';
  final Game game;

  const GamesDetailsScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(game.splashUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.network(game.logoUrl, width: 50, height: 50),
                  ),
                  Text(
                    game.name,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("${game.description}. Released in ${game.releaseYear}.",
                      textAlign: TextAlign.justify,
                      maxLines: 5,
                      style: const TextStyle(
                        fontSize: 18,
                      )),
            ),
            const Text("Popular Courses"),
          ],
        ));
  }
}
