part of dashboard;

class DashboardController extends GetxController {
  final pageSelected = SidebarPage.home.obs;

  final listTopMusic = [
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa kosipa kosipa kosipa kosipa kosipa ",
      singerName: "yayan jatnika yayan jatnika yayan jatnika yayan jatnika ",
      duration: Duration(seconds: 100),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa ",
      singerName: "yayan jatnika",
      duration: Duration(seconds: 100),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa ",
      singerName: "yayan jatnika",
      duration: Duration(seconds: 100),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa ",
      singerName: "yayan jatnika",
      duration: Duration(seconds: 100),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa ",
      singerName: "yayan jatnika",
      duration: Duration(seconds: 100),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.topMusic1),
      title: "kosipa ",
      singerName: "yayan jatnika",
      duration: Duration(seconds: 100),
    ),
  ];

  final listRecommendedAlbum = [
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album1), name: "Light"),
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album2), name: "Different World"),
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album3), name: "Different World"),
  ];

  final profil = DashboardProfile(
      image: AssetImage(ImageRasterConstant.logo),
      name: "Gia Developer",
      email: "giagamedeveloper@gmail.com");
}
