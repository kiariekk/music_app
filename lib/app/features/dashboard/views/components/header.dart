part of dashboard;

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 400,
            child: _search(),
          ),
          Spacer(flex: 20),
          _upgradeToPremiumButton(),
          Spacer(flex: 2),
          _settingButton(),
          Spacer(flex: 1),
          _notificationButton(),
        ],
      ),
    );
  }

  Widget _search() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.all(15),
          child: SvgPicture.asset(
            IconConstant.search,
            fit: BoxFit.cover,
          ),
        ),
        hintText: "Search for song, artist etc..",
      ),
    );
  }

  Widget _upgradeToPremiumButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(Get.context!).canvasColor,
        onPrimary: Theme.of(Get.context!).primaryColor,
        side: BorderSide(
          color: Theme.of(Get.context!).primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        elevation: 0,
      ),
      onPressed: () {},
      child: Text("Upgrade To Premium"),
    );
  }

  Widget _settingButton() {
    return IconButton(
      icon: SvgPicture.asset(IconConstant.settings),
      onPressed: () {},
      tooltip: "settings",
    );
  }

  Widget _notificationButton() {
    return IconButton(
      icon: SvgPicture.asset(IconConstant.notification),
      onPressed: () {},
      tooltip: "notification",
    );
  }
}
