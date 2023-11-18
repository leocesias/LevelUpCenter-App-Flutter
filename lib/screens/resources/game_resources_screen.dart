import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gamesResources extends StatefulWidget {
  const gamesResources({super.key});

  @override
  State<gamesResources> createState() => _gamesResourcesState();
}

class _gamesResourcesState extends State<gamesResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    'Video Game',
                    style: GoogleFonts.robotoMono(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF284A76),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    underline: Container(),
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(color: Colors.white),
                    ),
                    items: <String>['Filter 1', 'Filter 2', 'Filter 3']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                    hint: Text('Filter', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Text(
              'Resources',
              style: GoogleFonts.robotoMono(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              itemCount: 10,
              itemBuilder: (context, index) {
                Widget tile = ListTile(
                  leading: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Riot_Games_logo_icon.webp'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text(
                    //'$index Improve your Aim',
                    'Improve your Aim',
                    style: GoogleFonts.robotoMono(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Valorant',
                        style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Author',
                        style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Here you will learn how to improve your aim using a shoot trainer in-game',
                        style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                  },
                );
                if (index >= 0) {
                  return Column(
                    children: [
                      tile,
                      Divider(thickness: 1, color: Colors.black),
                    ],
                  );
                } else {
                  return tile;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
