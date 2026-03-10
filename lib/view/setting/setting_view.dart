import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_music_player_demo/viewmodel/splash_view_model.dart';
import 'package:flutter_music_player_demo/widgets/icon_text_row.dart';
import 'package:get/get.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
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
          "Setting",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          IconTextRow(
            title: "Display",
            icon: "assets/img/s_display.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Audio",
            icon: "assets/img/s_audio.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Headset",
            icon: "assets/img/s_headset.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Lock screen",
            icon: "assets/img/s_lock_screen.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Advanced",
            icon: "assets/img/s_menu.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Other",
            icon: "assets/img/s_other.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
