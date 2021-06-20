part of dashboard;

class _RecommendedAlbum extends GetView<DashboardController> {
  const _RecommendedAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Recommended Album",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            IconButton(
              icon: Icon(FontAwesomeIcons.longArrowAltLeft),
              onPressed: () {},
              tooltip: "previous",
            ),
            SizedBox(width: 20),
            IconButton(
              icon: Icon(FontAwesomeIcons.longArrowAltRight),
              onPressed: () {},
              tooltip: "next",
            ),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.listRecommendedAlbum
                  .map((e) => _cardAlbum(image: e.image, name: e.name))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }

  Widget _cardAlbum({required ImageProvider image, required String name}) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadowImage(
            imageProvider: image,
            size: Size(235, 160),
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
