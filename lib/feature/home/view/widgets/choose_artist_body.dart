import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/home/viewmodel/home_provider.dart';

class ChooseArtistBody extends StatelessWidget {
  const ChooseArtistBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: TextField(
                cursorColor: AppColors.spaceGreyColor,
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            SizedBox(
              height: 500,
              child: Consumer<HomeProvider>(
                builder: (BuildContext context, HomeProvider homeProvider,
                    Widget? child) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.87,
                    ),
                    itemCount: homeProvider.albums.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          color: AppColors.blackColor,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: ClipRRect(
                                  child: CircleAvatar(
                                      child: Image.network(
                                        homeProvider.albums[index].imagePath,
                                        fit: BoxFit.fill,
                                      ),
                                      radius: 55),
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    homeProvider.albums[index].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
