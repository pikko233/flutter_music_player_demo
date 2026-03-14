import 'package:flutter/material.dart';
import 'package:flutter_music_player_demo/common/color_extension.dart';

class ArtistRow extends StatelessWidget {
  final Map aObj;
  final Function(int index) onPressedMenuSelect;
  final VoidCallback onPressed;
  const ArtistRow({
    super.key,
    required this.aObj,
    required this.onPressed,
    required this.onPressedMenuSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: TColor.primaryText28),
                  ),
                  child: ClipRRect(
                    child: Image.network(
                      aObj["image"],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    aObj["name"],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.primaryText80,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${aObj["albums"]}\t · \t${aObj["songs"]}',
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuButton<int>(
              color: const Color(0xff383b49),
              offset: Offset(-40, 40),
              shadowColor: Colors.black,
              icon: Image.asset(
                "assets/img/more_btn.png",
                width: 20,
                height: 20,
              ),
              padding: EdgeInsets.zero,
              onSelected: onPressedMenuSelect,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Play", style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Play Next", style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Add to playing queue",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Add to playlist...",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Text("Rename", style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuItem(
                  value: 6,
                  child: Text("Tag editor", style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuItem(
                  value: 7,
                  child: Text("Go to artist", style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuItem(
                  value: 8,
                  child: Text(
                    "Delete from device",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const PopupMenuItem(
                  value: 8,
                  child: Text("Share", style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
