import 'package:flutter/material.dart';
import 'package:spotify/utils/data_biblioteca.dart';

import '../widgets/list_title_biblioteca.dart';

class BibliotecaPage extends StatelessWidget {
  const BibliotecaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.0,
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.circle,
          ),
          child: const Text('T',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Tu biblioteca'),
            Row(
              children: [
               const Icon(Icons.published_with_changes_outlined),
                const Text('  Más Reciente', style: TextStyle(fontSize: 12.0),),
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: ListView.builder(
          itemCount: dataBiblioteca.length,
          itemBuilder: (context, index) {
            return ListTileBiblioteca(
              image: dataBiblioteca[index]['image'],
              artis: dataBiblioteca[index]['title'],
            );
          },
        ),
      ),
    );
  }
}

