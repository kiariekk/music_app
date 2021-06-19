part of dashboard;

class _TopMusic extends GetView<DashboardController> {
  const _TopMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Top Music",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            IconButton(
                icon: Icon(FontAwesomeIcons.longArrowAltLeft),
                onPressed: () {}),
            SizedBox(width: 20),
            IconButton(
                icon: Icon(FontAwesomeIcons.longArrowAltRight),
                onPressed: () {}),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.listTopMusic
                  .map(
                    (e) => CardMusic.large(
                      data: CardMusicData(
                          image: e.image,
                          title: e.title,
                          subtitle: e.singerName,
                          duration: e.duration,
                          isPlaying: false),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
