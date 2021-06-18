part of dashboard;

class _TopMusic extends GetView<DashboardController> {
  const _TopMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Music",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.listTopMusic
                  .map(
                    (e) => _cardButton(
                      imageProvider: e.image,
                      title: e.title,
                      subtitle: e.singerName,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }

  Widget _cardButton(
      {required ImageProvider imageProvider,
      required String title,
      required String subtitle,
      Size size = const Size(320, 320)}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadowImage(
            imageProvider: imageProvider,
            size: size,
            offset: Offset(-10, 10),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: size.width,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: size.width,
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 13, color: Colors.black45),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
