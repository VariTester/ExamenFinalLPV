import 'package:flutter/material.dart';
import 'package:spotify/pages/detail_album.dart';
import 'package:spotify/utils/data_home.dart';

import '../widgets/image_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(bottom: 16.0, top: 64.0),
          itemCount: listMapHome.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 16.0),
                  child: Text(
                    listMapHome[index]['title'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 168.0,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 16.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: listMapHome[index]['content'].length,
                    itemBuilder: (context, indexContent) {
                      return Imagehome(
                        listHomeIndexContextIndexContext: listMapHome[index]
                            ['content'][indexContent],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 48.0,
          child: AppBar(
            title: const Text('Buenas Noches'),
            actions: const [
              Icon(Icons.notifications),
              SizedBox(width: 16.0),
              Icon(Icons.timer_outlined),
              SizedBox(width: 16.0),
              Icon(Icons.settings_outlined),
              SizedBox(width: 16.0),
            ],
          ),
        ),
      ],
    );
  }
}

