import 'package:flutter/material.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';

class ChooseArtistBody extends StatelessWidget {
  const ChooseArtistBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            cursorColor: AppColors.blackColor,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.spaceGreyColor,
              ),
              hintText: 'Search',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.GreyColor),
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemCount: 15,
              itemBuilder: (BuildContext ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: AppColors.lightBlackColor,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: CircleAvatar(
                            maxRadius: 45,
                            child: SizedBox(
                              child: Image.network(
                                  "https://picsum.photos/id/223/200/300"),
                            ),
                          ),
                        ),
                        Text(
                          'Billie Eilish',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
