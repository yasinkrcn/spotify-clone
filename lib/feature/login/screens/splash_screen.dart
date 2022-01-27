import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_music_application/core/constants/asseth_path.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/login/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBlackColor,
      body: Center(
        child: SvgPicture.asset(
          AssetsPath().spotifySVG,
          color: Colors.green,
          height: 80,
        ),
      ),
    );
  }
}
