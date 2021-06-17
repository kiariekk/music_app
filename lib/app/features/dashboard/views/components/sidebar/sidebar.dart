part of dashboard;

class _Sidebar extends GetView<DashboardController> {
  _Sidebar({Key? key}) : super(key: key);

  final _sidebar = SidebarPage.home.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(children: [
        _profile(),
        _groupingButton(textHeader: "Browse", items: [
          SidebarPage.home,
          SidebarPage.playlist,
          SidebarPage.artist,
          SidebarPage.albums
        ]),
        _groupingButton(textHeader: "Discover", items: [
          SidebarPage.radio,
          SidebarPage.event,
          SidebarPage.podcast,
          SidebarPage.forYou
        ]),
      ]),
    );
  }

  Widget _profile() {
    return Column(
      children: [
        ShadowImage(
            imageProvider: AssetImage(
          ImageRasterConstant.topMusic1,
        ))
      ],
    );
  }

  Widget _groupingButton(
      {required String textHeader, required List<SidebarPage> items}) {
    final _result = items
        .map(
          (e) => SideBarButton(
            value: e,
            groupValue: _sidebar.value,
            onChanged: (value) {
              _sidebar.value = value;
            },
          ),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 10),
          child: Text(
            textHeader,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
        ),
      ]..addAll(_result),
    );
  }
}
