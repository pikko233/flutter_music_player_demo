import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/viewmodel/albums_view_model.dart';
import 'package:flutter_music_player_demo/widgets/album_cell.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AlbumsView extends StatefulWidget {
  const AlbumsView({super.key});

  @override
  State<AlbumsView> createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  final albumVM = Get.put(AlbumViewModel());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var cellWidth = (media.width - 40 - 20) * 0.5;
    return Scaffold(
      body: Obx(
        () => GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: cellWidth / (cellWidth + 50.0),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: albumVM.allList.length,
          itemBuilder: (context, index) {
            var aObj = albumVM.allList[index];
            return AlbumCell(
              aObj: aObj,
              onPressed: () {},
              onPressedMenu: (selectIndex) {
                print(selectIndex);
              },
            );
          },
        ),
      ),
    );
  }
}
