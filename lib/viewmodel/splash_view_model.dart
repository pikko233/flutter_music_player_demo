import 'package:flutter_music_player_demo/view/main_tabview/main_tabview.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const MainTabView());
  }
}
