import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/viewmodel/home_view_model.dart';
import 'package:flutter_music_player_demo/viewmodel/splash_view_model.dart';
import 'package:flutter_music_player_demo/widgets/playlist_cell.dart';
import 'package:flutter_music_player_demo/widgets/recommended_cell.dart';
import 'package:flutter_music_player_demo/widgets/songs_row.dart';
import 'package:flutter_music_player_demo/widgets/title_section.dart';
import 'package:flutter_music_player_demo/widgets/view_all_section.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeVM = Get.put(HomeViewModel());
  final splashVM = Get.find<SplashViewModel>();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
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
            ListTile(
              leading: Image.asset(
                "assets/img/m_theme.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Themes",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_ring_cut.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Ringtone Cutter",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_sleep_timer.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Sleep Timer",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_eq.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Equliser",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_driver_mode.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Driver Mode",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_hidden_folder.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Hidden Folder",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText.withValues(alpha: 0.07),
              indent: 70,
            ),
            ListTile(
              leading: Image.asset(
                "assets/img/m_scan_media.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              title: Text(
                "Scan Media",
                style: TextStyle(
                  color: TColor.primaryText.withValues(alpha: 0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: TColor.bg,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          },
          icon: Image.asset(
            "assets/img/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff292e4b),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextField(
                  controller: homeVM.txtSearch.value,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 30,
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/img/search.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.primaryText28,
                      ),
                    ),
                    hintText: "Search album song",
                    hintStyle: TextStyle(
                      color: TColor.primaryText28,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Hot Recommened"),
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.hotRecommendedArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.hotRecommendedArr[index];
                  return RecommendedCell(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: Colors.white.withValues(alpha: 0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Playlist", onPressed: () {}),
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.playListArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.playListArr[index];
                  return PlaylistCell(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: Colors.white.withValues(alpha: 0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Recently Played", onPressed: () {}),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: homeVM.recentlyPlayedArr.length,
              itemBuilder: (context, index) {
                var sObj = homeVM.recentlyPlayedArr[index];
                return SongsRow(
                  sObj: sObj,
                  onPressed: () {},
                  onPressedPlay: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
