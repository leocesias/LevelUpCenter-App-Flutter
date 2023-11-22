import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/game/game.dart';
import 'package:game_mentor/services/game_service.dart';

class GameCreateScreen extends StatefulWidget {
  const GameCreateScreen({super.key});

  @override
  State<GameCreateScreen> createState() => _GameCreateScreenState();
}

class _GameCreateScreenState extends State<GameCreateScreen> {
  final TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController iconUrlController = TextEditingController();
  TextEditingController bannerUrlController = TextEditingController();
  TextEditingController splashUrlController = TextEditingController();
  TextEditingController releaseYearController = TextEditingController();
  TextEditingController ratingController = TextEditingController();


  Future<void> _createGame() async {
    Map<String, dynamic> data = {
      'name': nameController.text,
      'description': descriptionController.text,
      'iconUrl': iconUrlController.text,
      'bannerUrl': bannerUrlController.text,
      'splashUrl': splashUrlController.text,
      'releaseYear': int.tryParse(releaseYearController.text) ?? 0,
      'rating': double.tryParse(ratingController.text) ?? 0.0,
    };
    try {
      final response = await GameService.saveOne(Game.fromJson(data));

      if (response.statusCode == 200) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Game created successfully'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (ex) {
      print(ex);
    }
  }

  @override
  void initState() {
    super.initState();

    // Set the initial value for the text field
    descriptionController.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend vel lorem non semper. Aenean mollis commodo orci, et interdum lectus molestie quis. Quisque id odio sit amet quam accumsan scelerisque. Aenean a eros ut ipsum efficitur placerat. Sed sed porta velit. Integer maximus nisi et facilisis facilisis. Cras ut dolor in arcu euismod maximus in in elit. Mauris mattis nibh sit amet ante iaculis ultricies. Duis quis laoreet neque. ";
    iconUrlController.text = "https://static.wikia.nocookie.net/animatorvsanimation/images/5/52/MinecraftIcon.png/revision/latest/thumbnail/width/360/height/360?cb=20190830150033";
    bannerUrlController.text = "https://cdn2.steamgriddb.com/file/sgdb-cdn/icon/986648642d1a68a3178f6869689cc260.png";
    splashUrlController.text = "https://static-cdn.jtvnw.net/ttv-boxart/27471_IGDB-285x380.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          TextField(
            controller: iconUrlController,
            decoration: InputDecoration(labelText: 'Icon URL'),
          ),
          TextField(
            controller: bannerUrlController,
            decoration: InputDecoration(labelText: 'Banner URL'),
          ),
          TextField(
            controller: splashUrlController,
            decoration: InputDecoration(labelText: 'Splash URL'),
          ),
          TextField(
            controller: releaseYearController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Release Year'),
          ),
          TextField(
            controller: ratingController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Rating'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _createGame,
            child: Text('Create game'),
          ),
        ],
      ),
    );
  }
}