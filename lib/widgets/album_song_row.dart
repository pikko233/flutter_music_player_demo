import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';

class AlbumSongRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  final bool isPlay;
  const AlbumSongRow({
    super.key,
    required this.sObj,
    required this.onPressedPlay,
    required this.onPressed,
    this.isPlay = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Image.asset(
                "assets/img/play_btn.png",
                width: 25,
                height: 25,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sObj["name"],
                    maxLines: 1,
                    style: TextStyle(color: TColor.primaryText60, fontSize: 13),
                  ),
                ],
              ),
            ),
            Text(
              sObj["duration"],
              maxLines: 1,
              style: TextStyle(color: TColor.primaryText28, fontSize: 12),
            ),
            Container(
              width: 80,
              alignment: Alignment.centerRight,
              child: isPlay
                  ? Image.asset("assets/img/play_eq.png", width: 60, height: 25)
                  : Image.asset("assets/img/more.png", width: 25, height: 25),
            ),
          ],
        ),
        Divider(
          color: Colors.white.withValues(alpha: 0.07),
          indent: 40,
          endIndent: 20,
        ),
      ],
    );
  }
}
