import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';

class PlaylistSongCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const PlaylistSongCell({
    super.key,
    required this.pObj,
    required this.onPressedPlay,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            pObj["image"],
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pObj["name"],
                        maxLines: 1,
                        style: TextStyle(
                          color: TColor.primaryText80,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        pObj["songs"],
                        maxLines: 1,
                        style: TextStyle(
                          color: TColor.primaryText35,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: onPressedPlay,
                  child: Image.asset(
                    "assets/img/play.png",
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
