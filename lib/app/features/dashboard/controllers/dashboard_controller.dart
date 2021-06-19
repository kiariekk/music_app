part of dashboard;

class DashboardController extends GetxController {
  final pageSelected = SidebarPage.home.obs;

  final listTopMusic = [
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.leaveTheDoorOpen),
      title: "Leave The Door Open",
      singerName: "Bruno Mars, Anderson .Paak, Silk Sonic",
      duration: Duration(seconds: 241),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.atMyWorst),
      title: "At My Worst ",
      singerName: "Pink Sweat\$",
      duration: Duration(seconds: 125),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.levitating),
      title: "Levitating ",
      singerName: "Dua Lipa",
      duration: Duration(seconds: 221),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.peaches),
      title: "Peaches ",
      singerName: "Justin Bieber ft. Daniel Caesar, Giveon",
      duration: Duration(seconds: 223),
    ),
    DashboardMusic(
      image: AssetImage(ImageRasterConstant.saveYourTears),
      title: "Save Your Tears ",
      singerName: "The Weeknd & Ariana Grande",
      duration: Duration(seconds: 206),
    ),
  ];

  final listRecommendedAlbum = [
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album1), name: "Light"),
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album2), name: "Different World"),
    DashboardAlbum(
        image: AssetImage(ImageRasterConstant.album3), name: "Relaxing"),
  ];

  final profil = DashboardProfile(
      image: AssetImage(ImageRasterConstant.logo),
      name: "Gia Developer",
      email: "giagamedeveloper@gmail.com");
}
