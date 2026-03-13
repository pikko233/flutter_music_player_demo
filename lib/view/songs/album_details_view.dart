import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/view/songs/albums_view.dart';
import 'package:flutter_music_player_demo/view/songs/all_songs_view.dart';
import 'package:flutter_music_player_demo/view/songs/playlist_view.dart';
import 'package:flutter_music_player_demo/viewmodel/albums_view_model.dart';
import 'package:flutter_music_player_demo/viewmodel/splash_view_model.dart';
import 'package:flutter_music_player_demo/widgets/album_song_row.dart';
import 'package:flutter_music_player_demo/widgets/custom_drawer.dart';
import 'package:get/get.dart';

class AlbumDetailsView extends StatefulWidget {
  const AlbumDetailsView({super.key});

  @override
  State<AlbumDetailsView> createState() => _AlbumDetailsViewState();
}

class _AlbumDetailsViewState extends State<AlbumDetailsView>
    with SingleTickerProviderStateMixin {
  final albumVM = Get.find<AlbumViewModel>();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(
            "assets/img/back.png",
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Album Details",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Image.asset(
                        "assets/img/alb_1.png",
                        width: double.maxFinite,
                        height: media.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black54,
                    width: double.maxFinite,
                    height: media.width * 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/img/alb_1.png",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      color: TColor.primaryText.withValues(
                                        alpha: 0.9,
                                      ),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "by Michael Jackson",
                                    style: TextStyle(
                                      color: TColor.primaryText.withValues(
                                        alpha: 0.74,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "1996  .  18 Songs  .  64 mins",
                                    style: TextStyle(
                                      color: TColor.primaryText.withValues(
                                        alpha: 0.74,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: TColor.primaryG,
                                    begin: Alignment.topCenter,
                                    end: Alignment.center,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/img/play_n.png",
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                        color: TColor.primaryText.withValues(
                                          alpha: 0.74,
                                        ),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/img/share.png",
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                        color: TColor.primaryText.withValues(
                                          alpha: 0.74,
                                        ),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 140,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/img/fav.png",
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Add to Favorites",
                                      style: TextStyle(
                                        color: TColor.primaryText.withValues(
                                          alpha: 0.74,
                                        ),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                itemCount: albumVM.playedArr.length,
                itemBuilder: (context, index) {
                  var sObj = albumVM.playedArr[index];
                  return AlbumSongRow(
                    sObj: sObj,
                    isPlay: index == 0,
                    onPressed: () {},
                    onPressedPlay: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
