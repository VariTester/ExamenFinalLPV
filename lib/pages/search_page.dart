import 'package:flutter/material.dart';
import 'package:spotify/widgets/spo_text_field.dart';

import '../utils/data_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 96.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Buscar'),
            const SpoTextField(
              title: '¿Qué quieres escuchar?',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
          ),
          itemCount: dataSearch.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: dataSearch[index]['color'],
              ),
              child: Text(dataSearch[index]['title']),
            );
          },
        ),
      ),
    );
  }
}
