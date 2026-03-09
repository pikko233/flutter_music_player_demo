import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SongsRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const SongsRow({
    super.key,
    required this.sObj,
    required this.onPressedPlay,
    required this.onPressed,
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
                    style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    sObj["artists"],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset("assets/img/fav.png", width: 12, height: 12),
                const SizedBox(height: 4),
                IgnorePointer(
                  ignoring: true,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    unratedColor: TColor.org.withValues(alpha: 0.2),
                    allowHalfRating: true,
                    itemCount: 5,
                    ignoreGestures: true,
                    updateOnDrag: false,
                    itemPadding: EdgeInsets.zero,
                    itemSize: 12,
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: TColor.org),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
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
