// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:status_bar_control/status_bar_control.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                child: BarHome(
                  onNavBarVisibilityChanged: _onNavBarVisibilityChanged,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              const MyHome(),
            ],
          ),
        )
        // Mueve el floatingActionButton
        );
  }
}

class BarHome extends StatelessWidget {
  final Function(bool) onNavBarVisibilityChanged;

  const BarHome({Key? key, required this.onNavBarVisibilityChanged})
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

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.account_circle, size: 50, color: Colors.black),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                constraints: const BoxConstraints(maxWidth: 150),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Escribe tu publicación',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Publication(),
        const SizedBox(height: 10),
        const Divider(
          height: BorderSide.strokeAlignCenter,
          color: Colors.black,
          thickness: 2,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0), // Ajusta el valor de left según el margen deseado
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Coaches for you:',
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const CarouselHome(),
      ],
    );
  }
}

class Publication extends StatefulWidget {
  const Publication({super.key});

  @override
  State<Publication> createState() => _PublicationState();
}

class _PublicationState extends State<Publication> {
  List<String> comments = [
    'Comentario 1',
    'Comentario 2',
    'Comentario 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Icon(Icons.person, size: 40.0),
              const SizedBox(width: 8),
              Text(
                'Username',
                style: GoogleFonts.robotoMono(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child:
                  Image.asset('assets/images/image_1.png', fit: BoxFit.cover),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.thumb_up, size: 35, color: Colors.black),
                onPressed: () {
                  // Lógica cuando se presiona el primer ícono
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment, size: 35, color: Colors.black),
                onPressed: () {
                  // Lógica cuando se presiona el segundo ícono
                },
              ),
            ],
          ),
        ),
        ExpansionTile(
          title: Text('See comments', style: GoogleFonts.robotoMono()),
          children: comments.map((comment) {
            return ListTile(
              title: Text(comment),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class CarouselHome extends StatefulWidget {
  const CarouselHome({super.key});

  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int _currentIndex = 0; // Índice de la tarjeta actual

  // Lista de tarjetas
  final List<Widget> cardList = [
    const CardHome(),
    const CardHome(),

    // Agrega más tarjetas según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: cardList,
          options: CarouselOptions(
            height: 230.0, // Altura del carrusel
            initialPage: 0, // Índice de la tarjeta inicial
            enableInfiniteScroll:
                false, // Habilita/deshabilita el desplazamiento infinito
            viewportFraction:
                0.8, // Ancho de la tarjeta en relación con la pantalla
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex =
                    index; // Actualiza el índice de la tarjeta actual
              });
            },
          ),
        ),
        Text(
          'Coach $_currentIndex', // Muestra el número de la tarjeta actual
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CardHome extends StatelessWidget {
  const CardHome({super.key});

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
