import 'package:flutter/material.dart';
import 'package:spotify/utils/controles.dart';

import '../utils/button_shet.dart';

class MiniBarReproduccion extends StatefulWidget {

  final String titleAlbum;

  const MiniBarReproduccion({
    Key? key, required this.titleAlbum,
  }) : super(key: key);

  @override
  State<MiniBarReproduccion> createState() => _MiniBarReproduccionState();
}

class _MiniBarReproduccionState extends State<MiniBarReproduccion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: musicaAlbumIndex != 0 ? 64.0 : 0.0,
      color: Colors.black87,
      child: PageView.builder(
        itemCount: musicaAlbumIndex,
        itemBuilder: (context, indexListMusica) {
          Map<String, dynamic> accesoAMusica = musicaAlbum[indexListMusica];
          return ListTile(
            onTap: () {
              buttonSheet(
                context,
                title:
                    widget.titleAlbum,
                duration: accesoAMusica['duration'],
                titleMusic: accesoAMusica['title_music'],
                titleArtis: accesoAMusica['artist_music'],
                image: 'assets/${accesoAMusica['caratula']}',
                onPressed: () {
                  play = !play;
                  setState(() {});
                },
                play: play,
              );

              setState(() {});
            },
            leading: Image.asset('assets/${accesoAMusica['caratula']}'),
            title: Text(accesoAMusica['title_music']),
            subtitle: Text(accesoAMusica['artist_music']),
            trailing: IconButton(
                onPressed: () {
                  play = !play;
                  setState(() {});
                },
                icon: play
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow)),
          );
        },
      ),
    );
  }
}
