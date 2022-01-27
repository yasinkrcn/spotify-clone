import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/home/view/widgets/choose_artist_body.dart';

class ChooseArtist extends StatelessWidget {
  const ChooseArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.spaceGreyColor,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
        ),
        title: Text(
          'Choose 3 or more artists you like.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: ChooseArtistBody(),
    );
  }
}
