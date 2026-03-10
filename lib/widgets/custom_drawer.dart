import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/viewmodel/splash_view_model.dart';
import 'package:flutter_music_player_demo/widgets/icon_text_row.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    final splashVM = Get.find<SplashViewModel>();
    return Drawer(
      backgroundColor: const Color(0xff10121d),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 240,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: TColor.primaryText.withValues(alpha: 0.03),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/img/app_logo.png",
                    width: media.width * 0.18,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "328\nSongs",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc1c0c0),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "52\nAlbums",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc1c0c0),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "87\nArtists",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc1c0c0),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          IconTextRow(
            title: "Themes",
            icon: "assets/img/m_theme.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Ringtone Cutter",
            icon: "assets/img/m_ring_cut.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Sleep Timer",
            icon: "assets/img/m_sleep_timer.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Equliser",
            icon: "assets/img/m_eq.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Driver Mode",
            icon: "assets/img/m_driver_mode.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Hidden Folder",
            icon: "assets/img/m_hidden_folder.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Scan Media",
            icon: "assets/img/m_scan_media.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
