import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({Key? key,required this.buttonColor,required this.buttonText,required this.textColor, this.iconPath}) : super(key: key);
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 8),
          height: 50,
          width: 350,
          decoration: BoxDecoration(color: buttonColor,borderRadius: BorderRadius.circular(30),border:iconPath != null? Border.all(color: Colors.white,width:1):null),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconPath != null ?SvgPicture.asset(iconPath!):const SizedBox.shrink(),
              Text(buttonText,style: TextStyle(color: textColor,fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox.shrink(),
            ],
          ),
          alignment: Alignment.center,
        );
  }
}