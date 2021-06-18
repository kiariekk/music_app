import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/app/constants/app_constant.dart';
import 'package:music_app/app/shared_components/shadow_image.dart';

class CardMusic extends StatelessWidget {
  CardMusic(
      {this.isPlaying = false,
      this.isDense = false,
      required this.onPressedPlayOrPause,
      required this.onPressedLikedSong,
      Key? key})
      : super(key: key);
  final bool isPlaying;
  final bool isDense;
  final Function() onPressedPlayOrPause;
  final Function() onPressedLikedSong;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: (isPlaying) ? Colors.white : Colors.transparent,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            (isDense)
                ? _combineButtonAndImage()
                : Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: Icon((!isPlaying)
                            ? Icons.play_arrow_rounded
                            : Icons.pause_rounded),
                        onPressed: () => onPressedPlayOrPause(),
                      ),
                      SizedBox(width: 30),
                      ShadowImage(
                        imageProvider:
                            AssetImage(ImageRasterConstant.topMusic1),
                        size: Size(60, 60),
                        borderRadius: BorderRadius.circular(30),
                        offset: Offset(-5, 5),
                      ),
                    ],
                  ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Memories Memories Memories Memories Memories Memories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Memories Memories Memories Memories Memories Memories",
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            Text("2:34"),
            SizedBox(width: 20),
            IconButton(
              icon: SvgPicture.asset(IconConstant.hearth),
              onPressed: () => onPressedLikedSong(),
              tooltip: "liked song",
            )
          ],
        ),
      ),
    );
  }

  Widget _combineButtonAndImage() {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            minRadius: 30,
            backgroundImage: AssetImage(ImageRasterConstant.topMusic1),
          ),
          CircleAvatar(
            minRadius: 30,
            backgroundColor: Colors.white70,
          ),
          IconButton(
            iconSize: 40,
            icon: Icon(
                (!isPlaying) ? Icons.play_arrow_rounded : Icons.pause_rounded),
            onPressed: () => onPressedPlayOrPause(),
          ),
        ],
      ),
    );
  }
}
