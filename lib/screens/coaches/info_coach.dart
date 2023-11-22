import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:game_mentor/screens/screens.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCoach extends StatefulWidget {
  const InfoCoach({super.key});

  @override
  State<InfoCoach> createState() => _InfoCoachState();
}

class _InfoCoachState extends State<InfoCoach> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Coach()
        )
    );
  }
}

class Coach extends StatefulWidget {
  const Coach({super.key});

  @override
  State<Coach> createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        BarCoach(),
        SizedBox(height: 20),
        Description(),
        Divider(
          height: BorderSide.strokeAlignCenter,
          color: Colors.black,
          thickness: 2,
        ),
        Reserve()
      ],
    );
  }
}

class BarCoach extends StatefulWidget {
  const BarCoach({super.key});

  @override
  State<BarCoach> createState() => _BarCoachState();
}

class _BarCoachState extends State<BarCoach> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
        SizedBox(width: 65),
        Text(
          'Frank Gutierrez',
          style: GoogleFonts.robotoMono(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(width: 65),
        IconButton(
          icon: const Icon(Icons.thumb_up_alt_sharp, color: Color(0xFFFF2273)),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/coach.png'),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Puntaje: 5.0',
                    style: GoogleFonts.comfortaa(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Edad: 27',
                    style: GoogleFonts.comfortaa(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ciudad: Lima',
                    style: GoogleFonts.comfortaa(),
                  ),
                ],
              ),
              SizedBox(width: 110),
              Column(
                children: [
                  Text(
                    'Precio/session: S/.10',
                    style: GoogleFonts.comfortaa(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Idioma: Español',
                    style: GoogleFonts.comfortaa(),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Experiences',
          style: GoogleFonts.comfortaa(
              fontWeight: FontWeight.w900,
              fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'In the past I was a Counter Strike coach. Currently, since Valorant was launched, I have focused on having the best professional tactics and thus I was able to coach teams like Sentinels and Fnatic.',
            style: GoogleFonts.comfortaa(),
          )
        )

      ],
    );
  }
}

class Reserve extends StatefulWidget {
  const Reserve({super.key});

  @override
  State<Reserve> createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReserveCoach()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
            Colors.amberAccent, // Cambia el color de fondo del botón
            foregroundColor:
            Colors.black, // Cambia el color del texto del botón
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0), // Personaliza los bordes
            ),
          ),
          child: SizedBox(
            width: 90.0, // Ancho del botón
            height: 35.0, // Alto del botón
            child: Center(
              child: Text(
                'Reserve',
                style: GoogleFonts.robotoMono(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),

        IconButton(
          icon: const Icon(Icons.facebook),
          onPressed: () {
            _launchFacebookURL();
          },
        ),
      ],
    );
  }

  void _launchFacebookURL() async {
    const url = 'https://www.facebook.com'; // Coloca aquí el enlace de tu página de Facebook
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
}
