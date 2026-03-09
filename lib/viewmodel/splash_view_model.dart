import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/view/main_tabview/main_tabview.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void loadView() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.to(() => const MainTabView());
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }
}
