import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_music_application/core/constants/theme/app_colors.dart';
import 'package:spotify_music_application/feature/home/viewmodel/home_provider.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildGridViewStore(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Yakınlarda Çalınanlar..",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _buildSpecialAlbums(),
        ],
      ),
    );
  }

  Widget _buildSpecialAlbums() {
    return SizedBox(
      height: 200,
      child: Consumer<HomeProvider>(
        builder:
            (BuildContext context, HomeProvider homeProvider, Widget? child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: NetworkImage(
                              homeProvider.albums[index].imagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      homeProvider.albums[index].name,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 30,
                );
              },
              itemCount: homeProvider.albums.length);
        },
      ),
    );
  }

  Widget _buildGridViewStore() {
    return SizedBox(
      height: 200,
      child: Consumer<HomeProvider>(
        builder:
            (BuildContext context, HomeProvider homeProvider, Widget? child) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3,
            ),
            itemCount: homeProvider.albums.length,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: AppColors.greyBlackColor,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(homeProvider.albums[index].imagePath),
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
                        SizedBox.shrink()
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
