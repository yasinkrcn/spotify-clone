import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_music_application/core/constants/asseth_path.dart';
import 'package:spotify_music_application/core/shared_widgets/app_filled_button.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsPath().loginImagePNG),
        
        Text('Millions of Songs.',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        Text('Free on Spotify.',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

        AppFilledButton(buttonColor: Colors.green, buttonText: 'Sign up free', textColor: Colors.black,),
        AppFilledButton(buttonColor: Colors.black, buttonText: 'Continue with Google', textColor: Colors.white,iconPath: AssetsPath().googleSVG,),
        AppFilledButton(buttonColor: Colors.black, buttonText: 'Continue with Facebook', textColor: Colors.white,iconPath: AssetsPath().facebookSVG,),
        AppFilledButton(buttonColor: Colors.black, buttonText: 'Continue with Apple', textColor: Colors.white,iconPath: AssetsPath().appleSVG,),
        Text('Log in',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
        

      ],
    );
  }
}
