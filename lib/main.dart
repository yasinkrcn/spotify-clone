import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_music_application/feature/home/view/page/choose_artist_page.dart';
import 'package:spotify_music_application/feature/home/view/page/home_page.dart';
import 'package:spotify_music_application/feature/home/viewmodel/home_provider.dart';
import 'package:spotify_music_application/feature/login/screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
