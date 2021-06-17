part of dashboard;

class _BottomNavbar extends StatelessWidget {
  _BottomNavbar({Key? key}) : super(key: key);

  final _sliderValue = 0.6.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Material(
        color: Colors.white,
        child: Row(
          children: [
            Flexible(flex: 1, child: _label()),
            Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    _button(),
                    _slider(),
                  ],
                )),
            Flexible(flex: 1, child: _actionsButton()),
          ],
        ),
      ),
    );
  }

  Widget _label() {
    return Row(
      children: [
        SizedBox(width: 20),
        ShadowImage(
          imageProvider: AssetImage(ImageRasterConstant.topMusic1),
          size: Size(60, 60),
          borderRadius: BorderRadius.circular(30),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "label label label label",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text(
                "music music music music",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  Widget _button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.fast_rewind_outlined,
            size: 30,
          ),
          onPressed: () {},
          tooltip: "previous song",
        ),
        IconButton(
            iconSize: 40,
            icon: Icon(
              Icons.pause_circle_filled_rounded,
              color: Theme.of(Get.context!).primaryColor,
            ),
            onPressed: () {}),
        IconButton(
          icon: Icon(
            Icons.fast_forward_outlined,
            size: 30,
          ),
          onPressed: () {},
          tooltip: "next song",
        ),
      ],
    );
  }

  Widget _slider() {
    return Row(
      children: [
        Text("10:20"),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(Get.context!).copyWith(
                thumbColor: Colors.transparent,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
            child: Obx(
              () => Slider(
                value: _sliderValue.value,
                activeColor: Theme.of(Get.context!).primaryColor,
                onChanged: (value) => _sliderValue.value = value,
              ),
            ),
          ),
        ),
        Text("10:20"),
      ],
    );
  }

  Widget _actionsButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: SvgPicture.asset(IconConstant.hearth),
            onPressed: () {},
            tooltip: "Liked song"),
        IconButton(
          icon: SvgPicture.asset(IconConstant.music),
          onPressed: () {},
          tooltip: "List music",
        ),
        IconButton(
          icon: SvgPicture.asset(IconConstant.repeat),
          onPressed: () {},
          tooltip: "Repeat",
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
