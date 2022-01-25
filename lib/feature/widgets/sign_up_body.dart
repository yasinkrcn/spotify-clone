import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Create a password',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            cursorColor: AppColors.blackColor,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.GreyColor),
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              fillColor: AppColors.GreyColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text('Use atleast 8 characters.',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.GreyColor,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Center(
                  child: Text(
                'Next',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              )),
            ),
          )
        ],
      ),
    );
  }
}
