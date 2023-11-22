import 'package:flutter/material.dart';
import 'package:game_mentor/domain/models/coach/coach.dart';
import 'package:game_mentor/services/coach_service.dart';
import 'package:game_mentor/widgets/coaches/coach_item.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCoaches extends StatefulWidget {
  const AllCoaches({super.key});

  @override
  State<AllCoaches> createState() => _AllCoachesState();
}

class _AllCoachesState extends State<AllCoaches> {
  Future<List<Coach>> fetchCoaches() async {
    try {
      final response = await CoachService.getCoaches();
      List<Coach> coaches = [];
      if (response.statusCode == 200) {
        for (var coach in response.data!) {
          coaches.add(Coach.fromJson(coach));
        }
      }
      return coaches;
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Search(),
          const SizedBox(height: 20),
          const Divider(
            height: BorderSide.strokeAlignCenter,
            color: Colors.black,
            thickness: 2,
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); // Regresa a la pantalla anterior
                },
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder<List<Coach>>(
                future: fetchCoaches(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return CoachItem(coach: snapshot.data![index]);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                }),
          ),
        ],
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 50.0),
          child: SizedBox(
            height: 40,
            width: 200,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                filled: true,
                fillColor: const Color(0xFFF1F9EE),
                hintText: 'Buscar...',
                border: OutlineInputBorder(
                  // Define un borde con esquinas redondeadas
                  borderRadius: BorderRadius.circular(
                      30.0), // Cambia el radio para modificar la curvatura de las esquinas
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value; // Actualiza la consulta de búsqueda
                });
              },
            ),
          ),
        ),
        Container(
          width: 126,
          height: 40,
          padding: const EdgeInsets.only(left: 16.0),
          decoration: ShapeDecoration(
            color: const Color(0xFF284A76),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Filter',
                style: GoogleFonts.robotoMono(
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (String value) {
                  // Lógica al seleccionar una opción
                  print('Opción seleccionada: $value');
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'opcion_1',
                    child: Text('Opción 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'opcion_2',
                    child: Text('Opción 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'opcion_3',
                    child: Text('Opción 3'),
                  ),
                ],
                icon: const Icon(Icons.arrow_drop_down_circle_outlined,
                    color: Colors.white),
              )
            ],
          ),
        )

        /*Text(
          'Resultados para: $_searchQuery',
          style: TextStyle(fontSize: 20),
        ),*/
      ],
    );
  }
}
