import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/view/songs/albums_view.dart';
import 'package:flutter_music_player_demo/view/songs/all_songs_view.dart';
import 'package:flutter_music_player_demo/view/songs/playlist_view.dart';
import 'package:flutter_music_player_demo/viewmodel/splash_view_model.dart';
import 'package:flutter_music_player_demo/widgets/custom_drawer.dart';
import 'package:get/get.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          },
          icon: Image.asset(
            "assets/img/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Songs",
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
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight - 15,
            child: TabBar(
              controller: controller,
              indicatorColor: TColor.focus,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              isScrollable: true,
              labelStyle: TextStyle(
                color: TColor.primary,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                color: TColor.primaryText80,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(text: "All Songs"),
                Tab(text: "Playlist"),
                Tab(text: "Albums"),
                Tab(text: "Artists"),
                Tab(text: "Channels"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                const AllSongsView(),
                const PlaylistView(),
                const AlbumsView(),
                Center(child: Text("Artists")),
                Center(child: Text("Channels")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
