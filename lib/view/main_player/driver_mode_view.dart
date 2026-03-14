import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/view/main_player/play_playlist_view.dart';
import 'package:flutter_music_player_demo/viewmodel/all_songs_view_model.dart';
import 'package:flutter_music_player_demo/widgets/all_songs_row.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class DriverModeView extends StatefulWidget {
  const DriverModeView({super.key});

  @override
  State<DriverModeView> createState() => _DriverModeViewState();
}

class _DriverModeViewState extends State<DriverModeView> {
  var sliderVal = 0.7;
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
            "assets/img/close.png",
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Driver Mode",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.off(() => const PlayPlaylistView());
            },
            icon: Image.asset(
              "assets/img/playlist.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              width: media.width * 0.4,
              height: media.width * 0.4,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(media.width * 0.4),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(media.width * 0.4),
                child: Image.asset(
                  "assets/img/player_image.png",
                  width: media.width * 0.4,
                  height: media.width * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Text(
              "Black or White",
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Michael Jackson · Album - Dangerous",
              style: TextStyle(color: TColor.primaryText60, fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text(
              "232/327",
              style: TextStyle(color: TColor.primaryText60, fontSize: 14),
            ),
            const SizedBox(height: 60),
            Slider(
              value: sliderVal,
              activeColor: TColor.focus,
              inactiveColor: TColor.primaryText35,
              onChanged: (value) {
                setState(() {
                  sliderVal = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3:35",
                    style: TextStyle(color: TColor.primaryText60, fontSize: 12),
                  ),
                  Text(
                    "4:26",
                    style: TextStyle(color: TColor.primaryText60, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/img/previous_song.png"),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/img/play.png"),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/img/next_song.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
