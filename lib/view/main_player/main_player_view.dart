import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/view/main_player/driver_mode_view.dart';
import 'package:flutter_music_player_demo/view/main_player/play_playlist_view.dart';
import 'package:flutter_music_player_demo/widgets/player_bottom_button.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MainPlayerView extends StatefulWidget {
  const MainPlayerView({super.key});

  @override
  State<MainPlayerView> createState() => _MainPlayerViewState();
}

class _MainPlayerViewState extends State<MainPlayerView> {
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
          "Now Playing",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            color: const Color(0xff383b49),
            offset: Offset(-40, 40),
            shadowColor: Colors.black,
            icon: Icon(Icons.more_vert),
            padding: EdgeInsets.zero,
            onSelected: (index) {
              if (index == 9) {
                // Driver Mode
                Get.to(() => const DriverModeView());
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Social Share", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Playing Queue", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text(
                  "Add to playlist...",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Lyrics", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Volume", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text("Details", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text("Sleep timer", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 8,
                child: Text("Equaliser", style: TextStyle(fontSize: 12)),
              ),
              const PopupMenuItem(
                value: 9,
                child: Text("Driver mode", style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(media.width * 0.6),
                  child: Image.asset(
                    "assets/img/player_image.png",
                    width: media.width * 0.6,
                    height: media.width * 0.6,
                    fit: BoxFit.cover,
                  ),
                ),
                SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    customWidths: CustomSliderWidths(
                      trackWidth: 4,
                      progressBarWidth: 10,
                      shadowWidth: 70,
                    ),
                    customColors: CustomSliderColors(
                      dotColor: Color(0xffFFB1B2),
                      // trackColor: Color(0xffE9585A),
                      trackColor: Color(0xffffffff).withValues(alpha: 0.3),
                      progressBarColors: [Color(0xffFB9967), Color(0xffE9585A)],
                      shadowColor: Color(0xffFFB1B2),
                      shadowMaxOpacity: 0.05,
                    ),
                    infoProperties: InfoProperties(
                      mainLabelStyle: TextStyle(color: Colors.transparent),
                    ),
                    startAngle: 270,
                    angleRange: 360,
                    size: media.width * 0.62,
                  ),
                  min: 0,
                  max: 100,
                  initialValue: 60,
                  onChange: (double value) {
                    // callback providing a value while its being changed (with a pan gesture)
                  },
                  onChangeStart: (double startValue) {
                    // callback providing a starting value (when a pan gesture starts)
                  },
                  onChangeEnd: (double endValue) {
                    // ucallback providing an ending value (when a pan gesture ends)
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "3:15 | 4:26",
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
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
              style: TextStyle(color: TColor.secondaryText, fontSize: 12),
            ),
            const SizedBox(height: 10),
            Image.asset(
              "assets/img/eq_display.png",
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white24, indent: 20, endIndent: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/img/previous_song.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/play.png",
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/img/next_song.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlayerBottomButton(
                  title: "Playlist",
                  icon: "assets/img/playlist.png",
                  onPressed: () {
                    Get.to(() => const PlayPlaylistView());
                  },
                ),
                PlayerBottomButton(
                  title: "Shuffle",
                  icon: "assets/img/shuffle.png",
                  onPressed: () {},
                ),
                PlayerBottomButton(
                  title: "Repeat",
                  icon: "assets/img/repeat.png",
                  onPressed: () {},
                ),
                PlayerBottomButton(
                  title: "EQ",
                  icon: "assets/img/eq.png",
                  onPressed: () {},
                ),
                PlayerBottomButton(
                  title: "Favourites",
                  icon: "assets/img/fav.png",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
