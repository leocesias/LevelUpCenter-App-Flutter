// ignore_for_file: file_names
import 'package:GameMentor/config/menu/menuItemsTop.dart';
import 'package:GameMentor/widgets/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class NavbarTopScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const NavbarTopScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Game Mentor'),
        centerTitle: true,
      ),
      body: const _NavbarTopScreen(),
      drawer:  SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _NavbarTopScreen extends StatelessWidget {
  const _NavbarTopScreen();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        //return Text(menuItem.title);
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
