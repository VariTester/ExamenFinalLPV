import 'package:flutter/material.dart';

class ListTileBiblioteca extends StatelessWidget {
  final String image;
  final String artis;
  const ListTileBiblioteca({
    Key? key,
    required this.image,
    required this.artis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: 48.0,
            height: 48.0,
          )),
      title: Text(artis),
      subtitle: const Text('Artista'),
    );
  }
}
