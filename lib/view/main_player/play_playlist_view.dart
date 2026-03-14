import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/view/main_player/driver_mode_view.dart';
import 'package:flutter_music_player_demo/view/main_player/main_player_view.dart';
import 'package:flutter_music_player_demo/viewmodel/all_songs_view_model.dart';
import 'package:flutter_music_player_demo/widgets/all_songs_row.dart';
import 'package:flutter_music_player_demo/widgets/player_bottom_button.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PlayPlaylistView extends StatefulWidget {
  const PlayPlaylistView({super.key});

  @override
  State<PlayPlaylistView> createState() => _PlayPlaylistViewState();
}

class _PlayPlaylistViewState extends State<PlayPlaylistView> {
  final allVM = Get.put(AllSongsViewModel());
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
          "Playlist",
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
              print(index);
              if (index == 9) {
                // Driver Mode
                Get.off(() => const DriverModeView());
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/previous_song.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(media.width * 0.4),
                        child: Image.asset(
                          "assets/img/player_image.png",
                          width: media.width * 0.4,
                          height: media.width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                          customWidths: CustomSliderWidths(
                            trackWidth: 4,
                            progressBarWidth: 6,
                            shadowWidth: 30,
                          ),
                          customColors: CustomSliderColors(
                            dotColor: Color(0xffFFB1B2),
                            // trackColor: Color(0xffE9585A),
                            trackColor: Color(
                              0xffffffff,
                            ).withValues(alpha: 0.3),
                            progressBarColors: [
                              Color(0xffFB9967),
                              Color(0xffE9585A),
                            ],
                            shadowColor: Color(0xffFFB1B2),
                            shadowMaxOpacity: 0.05,
                          ),
                          infoProperties: InfoProperties(
                            mainLabelStyle: TextStyle(
                              color: Colors.transparent,
                            ),
                          ),
                          startAngle: 270,
                          angleRange: 360,
                          size: media.width * 0.42,
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
              style: TextStyle(color: TColor.secondaryText, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Obx(
              () => ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                itemCount: allVM.allList.length,
                itemBuilder: (context, index) {
                  var sObj = allVM.allList[index];
                  return AllSongsRow(
                    sObj: sObj,
                    onPressed: () {},
                    onPressedPlay: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
