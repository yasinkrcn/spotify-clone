import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/widgets/choose_artist_body.dart';

class ChooseArtist extends StatelessWidget {
  const ChooseArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Choose 3 or more artist you like.',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
              backgroundColor: AppColors.spaceGreyColor,
            ),
          ),
          backgroundColor: AppColors.lightBlackColor),
          backgroundColor: AppColors.lightBlackColor,
      body: ChooseArtistBody(),
    );
  }
}
