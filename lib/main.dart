import 'package:flutter/material.dart';
import 'package:spotify_music_application/feature/login/screens/login_page.dart';

void main() {
  runApp(const MyApp());
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
      home: const LoginPage()
    );
  }
}

