import 'package:flutter/material.dart';
import 'dart:math';
import 'progress_screen.dart';

class ActivitiesScreen extends StatelessWidget {

  static const String name = 'activities_screen';

  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    activities.sort((a, b) => b.timePlayed.compareTo(a.timePlayed));  // Ordena las actividades de más reciente a más antiguo
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juegos a los que te haz unido'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: activities.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProgressScreen(activity: activities[index]),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.network(activities[index].imageUrl,
                            width: 100, height: 100),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Jugado hace: ${getTimePlayed(activities[index].timePlayed)}'),
                            Text(activities[index].gamePlayed),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Activity {
  final String gamePlayed;
  final String imageUrl;
  final DateTime timePlayed;  // Cambia este campo a DateTime

  Activity({
    required this.gamePlayed,
    required this.imageUrl,
    required this.timePlayed,
  });
}

List<Activity> activities = [
  Activity(
    gamePlayed: 'The Witcher 3: Wild Hunt',
    imageUrl: 'https://store-images.s-microsoft.com/image/apps.46303.69531514236615003.534d4f71-03cb-4592-929a-b00a7de28b58.abbf704e-3676-4fb7-9f68-f4425de5df24?q=90&w=480&h=270',
    timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
    gamePlayed: 'Counter-Strike: Global Offensive',
    imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/730/capsule_616x353.jpg?t=1696513856',
    timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
    gamePlayed: 'Fornite',
    imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTet_ul4J2lya_bkfXrqfPeKFEurIsiAslbdA&usqp=CAU',
    timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
    gamePlayed: 'The Elder Scrolls V: Skyrim',
    imageUrl:
    'https://i.guim.co.uk/img/static/sys-images/Technology/Pix/pictures/2011/11/10/1320919365445/Elder-Scrolls-V-Skyrim-007.jpg?width=465&dpr=1&s=none',
    timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
    gamePlayed: 'League of Legends',
    imageUrl:
    'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt670d428d1921eed8/614be30d69b7947c1b3aebd5/9242021_StateofGameplayArticle_Header.jpg',
    timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
      gamePlayed: 'Overwatch',
      imageUrl: 'https://blz-contentstack-images.akamaized.net/v3/assets/bltf408a0557f4e4998/blt655ba24b53a5be3c/64d52a41fc196c262a8b569c/OVR_HerovHero_inRio_(1).png?imwidth=&imdensity=2',
      timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
      gamePlayed: 'Cyberpunk 2077',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVF_ytaNrKEF7OlFpSesxeNLvkyOMQdHy2UI_pMuTFI_i6dbQt5o8jfy9D-BsqcM9TXBE&usqp=CAU',
      timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
      gamePlayed: 'Doom Eternal',
      imageUrl:'https://images.immediate.co.uk/production/volatile/sites/3/2021/03/Doom-Eternal-Screenshot-2020.10.21-22.38.42.03-086b414.jpg?quality=90&resize=980,654',
      timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
      gamePlayed: 'Red Dead Redemption 2',
      imageUrl: 'https://m.media-amazon.com/images/I/71p7aG-LFlL._AC_UF350,350_QL80_.jpg',
      timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),
  Activity(
      gamePlayed: 'Fallout 4',
      imageUrl: 'https://assets.nuuvem.com/image/upload/t_screenshot_full/v1/products/594bd72c21624867e0000bc2/screenshots/ceirc8kwxnxs2f97ar6a.jpg',
      timePlayed: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
  ),

];

String getTimePlayed(DateTime timePlayed) {
  final duration = DateTime.now().difference(timePlayed);
  if (duration.inDays > 30) {
    return '${duration.inDays ~/ 30} meses';
  } else if (duration.inDays > 0) {
    return '${duration.inDays} días';
  } else if (duration.inHours > 0) {
    return '${duration.inHours} h';
  } else {
    return '${duration.inMinutes} min';
  }
}
