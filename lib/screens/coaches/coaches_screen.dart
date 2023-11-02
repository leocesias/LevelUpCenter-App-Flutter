// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:status_bar_control/status_bar_control.dart';

class CoachesScreen extends StatefulWidget {
  const CoachesScreen({super.key});

  @override
  State<CoachesScreen> createState() => _CoachesScreenState();
}

class _CoachesScreenState extends State<CoachesScreen> {
  void _onNavBarVisibilityChanged(bool isHidden) {
    setState(() {});
    StatusBarControl.setHidden(isHidden);
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: statusBarHeight),
                child: MyBar(
                  onNavBarVisibilityChanged: _onNavBarVisibilityChanged,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              //MyHome(),
              const MyCoach(),
            ],
          ),
        )
        // Mueve el floatingActionButton
        );
  }
}

class MyBar extends StatelessWidget {
  final Function(bool) onNavBarVisibilityChanged;

  const MyBar({Key? key, required this.onNavBarVisibilityChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, top: 2, right: 10, bottom: 0),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'GameMentor',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.home), // Primer ícono a la derecha
                    onPressed: () {
                      // Lógica cuando se presiona el primer ícono
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                        Icons.notifications), // Segundo ícono a la derecha
                    onPressed: () {
                      // Lógica cuando se presiona el segundo ícono
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCoach extends StatefulWidget {
  const MyCoach({super.key});

  @override
  State<MyCoach> createState() => _MyCoachState();
}

class _MyCoachState extends State<MyCoach> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Your Coaches',
                  style: GoogleFonts.robotoMono(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
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
                      'Explorer',
                      style: GoogleFonts.robotoMono(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Divider(
          height: BorderSide.strokeAlignCenter,
          color: Colors.black,
          thickness: 2,
        ),
        const SizedBox(height: 20),
        const Carousel(title: 'In services:'),
        const SizedBox(height: 5),
        const Center(
          child: SizedBox(
            width: 350, // Ancho del Divider
            child: Divider(
              color: Colors.black, // Puedes personalizar el color del Divider
              thickness: 2, // Puedes personalizar el grosor del Divider
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Carousel(title: 'Favorites:'),
      ],
    );
  }
}

class Carousel extends StatefulWidget {
  final String title;
  const Carousel({super.key, required this.title});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  //int _currentIndex = 0; // Índice de la tarjeta actual

  // Lista de tarjetas
  final List<Widget> cardList = [
    const MyCard(),
    const MyCard(),
    const MyCard(),
    const MyCard(),

    // Agrega más tarjetas según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 20.0), // Ajusta el valor de left según el margen deseado
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        CarouselSlider(
          items: cardList,
          options: CarouselOptions(
            height: 230.0, // Altura del carrusel
            initialPage: 0, // Índice de la tarjeta inicial
            enableInfiniteScroll:
                false, // Habilita/deshabilita el desplazamiento infinito
            viewportFraction:
                0.8, // Ancho de la tarjeta en relación con la pantalla
            /*onPageChanged: (index, reason) {
              setState(() {
                _currentIndex =
                    index; // Actualiza el índice de la tarjeta actual
              });
            },*/
          ),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                // Imagen de la persona a la izquierda
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/coach.png'), // Cambia la ruta de la imagen
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                    width: 16), // Espacio entre la imagen y los datos

                // Datos de la persona a la derecha
                const Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text(
                      'Juan',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Valorant',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
