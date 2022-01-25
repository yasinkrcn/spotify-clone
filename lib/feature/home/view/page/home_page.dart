import 'package:flutter/material.dart';
import 'package:spotify_music_application/feature/home/view/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Tünaydın"),
        actions: [
          Icon(Icons.notification_add),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.history),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Colors.black87,
      ),
      body: HomePageBody(),
    );
  }
}
