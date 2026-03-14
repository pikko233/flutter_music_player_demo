import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/viewmodel/genres_view_model.dart';
import 'package:flutter_music_player_demo/widgets/genres_cell.dart';
import 'package:get/get.dart';

class GenresView extends StatefulWidget {
  const GenresView({super.key});

  @override
  State<GenresView> createState() => _GenresViewState();
}

class _GenresViewState extends State<GenresView> {
  final genVM = Get.put(GenresViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.4,
        ),
        itemCount: genVM.allList.length,
        itemBuilder: (context, index) {
          var cObj = genVM.allList[index];
          return GenresCell(cObj: cObj, onPressed: () {});
        },
      ),
    );
  }
}
