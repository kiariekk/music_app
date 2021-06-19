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
        SizedBox(height: kPaddingContent / 2),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: controller.listPopularMusic
                .asMap()
                .entries
                .map(
                  (e) => CardMusic(
                    data: CardMusicData(
                      image: e.value.image,
                      title: e.value.title,
                      subtitle: e.value.singerName,
                      duration: e.value.duration,
                      isPlaying: (e.key == 0),
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
