import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/widgets/sign_up_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlackColor,
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text('Create Account'),
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
      body: SignUpBody(),
    );
  }
}
