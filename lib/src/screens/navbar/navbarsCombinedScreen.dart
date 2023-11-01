// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:GameMentor/config/menu/menuItemsBottom.dart';
import 'package:GameMentor/config/router/appRouterBottom.dart';
import 'package:GameMentor/src/widgets/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarCombinedScreen extends StatefulWidget {
  const NavbarCombinedScreen({Key? key}) : super(key: key);

  @override
  _NavbarCombinedScreenState createState() => _NavbarCombinedScreenState();
}

class _NavbarCombinedScreenState extends State<NavbarCombinedScreen> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Método para actualizar el índice
  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          // pading en todos los lados de 60
          toolbarHeight: 60,
          title: Text('Game Mentor',
              style: GoogleFonts.robotoMono(
                  fontWeight: FontWeight.bold, fontSize: 18),
              selectionColor: colors.onPrimary),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState?.openDrawer()),
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.notifications, color: colors.onPrimary))
            // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ]),
      bottomNavigationBar: MenuItemsBottom(
        currentIndex: _updateIndex,
      ),
      body: AppRouterBottom(index: _currentIndex),
      drawer: SideMenu(
        scaffoldKey: _scaffoldKey,
      ),
    );
  }
}
