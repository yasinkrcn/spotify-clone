import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blackColor,
      body: LoginPageBody(),
    );
  }
}