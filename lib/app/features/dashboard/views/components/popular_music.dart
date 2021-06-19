part of dashboard;

class _PopularMusic extends GetView<DashboardController> {
  const _PopularMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Music",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: controller.listTopMusic
                .map(
                  (e) => CardMusic(
                    data: CardMusicData(
                      image: e.image,
                      title: e.title,
                      subtitle: e.singerName,
                      duration: e.duration,
                      isPlaying: false,
                    ),
                    onPressedPlayOrPause: () {},
                    onPressedLikedSong: () {},
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
