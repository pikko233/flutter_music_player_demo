import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/view/songs/album_details_view.dart';
import 'package:flutter_music_player_demo/view/songs/artist_details_view.dart';
import 'package:flutter_music_player_demo/viewmodel/albums_view_model.dart';
import 'package:flutter_music_player_demo/viewmodel/artists_view_model.dart';
import 'package:flutter_music_player_demo/widgets/album_cell.dart';
import 'package:flutter_music_player_demo/widgets/artist_row.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ArtistsView extends StatefulWidget {
  const ArtistsView({super.key});

  @override
  State<ArtistsView> createState() => _ArtistsViewState();
}

class _ArtistsViewState extends State<ArtistsView> {
  final artistVM = Get.put(ArtistsViewModel());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var cellWidth = (media.width - 40 - 20) * 0.5;
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemCount: artistVM.allList.length,
          itemBuilder: (context, index) {
            var aObj = artistVM.allList[index];
            return ArtistRow(
              aObj: aObj,
              onPressed: () {
                Get.to(() => const ArtistDetailsView());
              },
              onPressedMenuSelect: (index) {},
            );
          },
        ),
      ),
    );
  }
}
