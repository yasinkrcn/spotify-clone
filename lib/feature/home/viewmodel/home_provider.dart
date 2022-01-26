import 'package:flutter/foundation.dart';
import 'package:spotify_music_application/feature/home/domain/entity/album.dart';

class HomeProvider with ChangeNotifier {
  List<Album> albums = [
    Album(
        imagePath: "https://picsum.photos/id/223/200/300",
        name: "Lana Del Rey"),
    Album(imagePath: "https://picsum.photos/id/23/200/300", name: "MKVT"),
    Album(imagePath: "https://picsum.photos/id/22/200/300", name: "Bionce"),
    Album(imagePath: "https://picsum.photos/id/44/200/300", name: "Rihanna"),
    Album(imagePath: "https://picsum.photos/id/55/200/300", name: "Emşnem"),
    Album(imagePath: "https://picsum.photos/id/66/200/300", name: "Ezel"),
  
  ];
}
