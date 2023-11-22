import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/coach/coach.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CoachItem extends StatelessWidget {
  final Coach coach;

  const CoachItem({super.key, required this.coach});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 180,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFFF1F9EE),
        shape: RoundedRectangleBorder(
          //side: BorderSide(width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: ClipOval(
                child: Image.network(
              coach.profilePictureUrl,
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coach.nickname,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    launchUrlString(coach.twitchUrl);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(const CircleBorder()),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(7.5)),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.white), // <-- Button color
                    overlayColor:
                        MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.red; // <-- Splash color
                      }
                      return null;
                    }),
                  ),
                  child: Image.network(
                    'https://assets.stickpng.com/images/580b57fcd9996e24bc43c540.png',
                    width: 20,
                    height: 20,
                  )),
              Text(
                'Cursos: ${coach.courses.length}',
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const Text(
                '"Self confidence is the key"',
                style: TextStyle(fontSize: 14),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
