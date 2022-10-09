import 'package:flutter/material.dart';
import 'package:spotify/utils/button_shet.dart';

import '../utils/controles.dart';
import '../widgets/app_bar_detail.dart';
import '../widgets/mini_bar_reproduccion.dart';

class DetailAlbumPage extends StatefulWidget {
  final Map listMapDetailAlbum;

  const DetailAlbumPage({
    super.key,
    required this.listMapDetailAlbum,
  });

  @override
  State<DetailAlbumPage> createState() => _DetailAlbumPageState();
}

class _DetailAlbumPageState extends State<DetailAlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              AppBarDetail(
                title: widget.listMapDetailAlbum['title_content'],
                image: 'assets/${widget.listMapDetailAlbum['img_content']}',
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            widget.listMapDetailAlbum['favorite'] =
                                !widget.listMapDetailAlbum['favorite'];
                            setState(() {});
                          },
                          icon: widget.listMapDetailAlbum['favorite']
                              ? const Icon(Icons.favorite, color: Colors.green)
                              : const Icon(Icons.favorite_outline),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                    FloatingActionButton(
                        onPressed: () {
                          musicaAlbum = widget.listMapDetailAlbum['musics_content'];
                          musicaAlbumIndex = widget
                              .listMapDetailAlbum['musics_content'].length;
                          play = !play;
                          setState(() {});
                        },
                        child: play
                            ? const Icon(Icons.pause)
                            : const Icon(Icons.play_arrow)),
                  ],
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(bottom: 64.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.listMapDetailAlbum['musics_content'].length,
                itemBuilder: (context, indexListMusica) {
                  Map<String, dynamic> accesoAMusica = widget
                      .listMapDetailAlbum['musics_content'][indexListMusica];
                  return ListTile(
                    onTap: () {
                      musicaAlbum = widget.listMapDetailAlbum['musics_content'];
                      musicaAlbumIndex =
                          widget.listMapDetailAlbum['musics_content'].length;
                      play = !play;
                      setState(() {});
                      setState(() {});
                    },
                    leading: Image.asset('assets/${accesoAMusica['caratula']}'),
                    title: Text(accesoAMusica['title_music']),
                    subtitle: Text(accesoAMusica['artist_music']),
                  );
                },
              ),
            ],
          ),
          MiniBarReproduccion(
            titleAlbum: 'REPRODUCIENDO DE LA PLAYLIST\n${widget.listMapDetailAlbum['title_content']}',
          ),
        ],
      ),
    );
  }
}

