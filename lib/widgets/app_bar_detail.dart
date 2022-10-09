import 'package:flutter/material.dart';

class AppBarDetail extends StatelessWidget {
  final String image;
  final String title;

  const AppBarDetail({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(image),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87]),
              ),
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 24.0),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(16.0),
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black45,
            ),
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back)),
          ),
        ),
      ],
    );
  }
}
