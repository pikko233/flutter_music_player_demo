import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/viewmodel/all_songs_view_model.dart';
import 'package:flutter_music_player_demo/widgets/all_songs_row.dart';
import 'package:get/get.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {
  final allVM = Get.put(AllSongsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
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
    );
  }
}
