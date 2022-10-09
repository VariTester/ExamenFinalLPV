import 'package:flutter/material.dart';

import '../pages/detail_album.dart';

class Imagehome extends StatelessWidget {
  final Map listHomeIndexContextIndexContext;

  const Imagehome({
    Key? key,
    required this.listHomeIndexContextIndexContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 2.0, right: 16.0),
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailAlbumPage(
                        listMapDetailAlbum: listHomeIndexContextIndexContext))),
            child: Image.asset(
                'assets/${listHomeIndexContextIndexContext['img_content']}',
                height: 128.0,
                width: 128.0,
                fit: BoxFit.cover),
          ),
        ),
        Text('${listHomeIndexContextIndexContext['title_content']}\n',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
