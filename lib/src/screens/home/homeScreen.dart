// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        // Elimina la Columna
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          Divider(
            height: BorderSide.strokeAlignCenter,
            color: Colors.black,
          ),
          MyHome(),
        ],
      ), // Mueve el floatingActionButton
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onTap: () {},
        child: Text(
          'GameMentor',
          style: GoogleFonts.robotoMono(),
        ),
      ),
      //title: const Text('GameMentor'), // Nombre de la empresa a la izquierda
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home), // Primer ícono a la derecha
          onPressed: () {
            // Lógica cuando se presiona el primer ícono
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications), // Segundo ícono a la derecha
          onPressed: () {
            // Lógica cuando se presiona el segundo ícono
          },
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
  bool showComments = false; // Controla si los comentarios están visibles

  List<String> comments = [
    'Comentario 1',
    'Comentario 2',
    'Comentario 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(Icons.account_box, size: 40.0),
            Text(
              'Username',
              style: GoogleFonts.robotoMono(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/image_1.png', fit: BoxFit.cover),
            ),
          ],
        ),
        Row(
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
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('See comments', style: GoogleFonts.robotoMono()),
            Column(mainAxisSize: MainAxisSize.min, children: [
              Flexible(
                child: IconButton(
                  icon: Icon(
                    showComments ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  ),
                  onPressed: () {
                    setState(() {
                      showComments = !showComments;
                    });
                  },
                ),
              ),

              // Mostrar comentarios si showComments es true
              if (showComments)
                Expanded(
                  child: ListView.builder(
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(comments[index]),
                      );
                    },
                  ),
                ),
            ])
          ],
        ),
      ],
    );
  }
}
