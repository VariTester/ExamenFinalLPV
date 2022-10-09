import 'package:flutter/material.dart';
import 'package:spotify/pages/splash_screen.dart';
import 'package:spotify/widgets/bottom_nav_bar.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade900
        ),
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: const SplashScreen(),
    );
  }
}

