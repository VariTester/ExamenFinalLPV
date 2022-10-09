import 'package:flutter/material.dart';
import 'package:spotify/pages/biblioteca_page.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/pages/search_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            SearchPage(),
            BibliotecaPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(icon: Icon(Icons.home_filled), text: 'Inicio'),
            Tab(icon: Icon(Icons.search), text: 'Buscar'),
            Tab(icon: Icon(Icons.menu_book), text: 'Tu biblioteca'),
          ],
        ),
      ),
    );
  }
}
