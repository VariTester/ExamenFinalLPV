import 'package:flutter/material.dart';

Future<dynamic> buttonSheet(
  BuildContext context, {
  required String title,
  required String titleMusic,
  required String titleArtis,
  required String duration,
  required String image,
  required bool play,
  required Function()? onPressed,
}) =>
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      isDismissible: true,
      context: context,
      builder: (BuildContext ctx) => Column(
        children: [
          AppBar(
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_downward_outlined)),
            centerTitle: true,
            title: Text(
              title,
              style: const TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.favorite_outline),
                      Row(
                        children: [
                          const Icon(Icons.navigate_before),
                          const SizedBox(width: 16.0),
                          FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: onPressed,
                            child: play
                                ? const Icon(Icons.pause)
                                : const Icon(Icons.play_arrow),
                          ),
                          const SizedBox(width: 16.0),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                      const Icon(Icons.visibility_off),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('0:00'),
                      Text(duration),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        color: Colors.white54,
                        height: 2.0,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Text(titleMusic),
                  subtitle: Text(titleArtis),
                ),
                Image.asset(image),
              ],
            ),
          ),
        ],
      ),
    );
