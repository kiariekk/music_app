part of dashboard;

class DashboardController extends GetxController {
  final pageSelected = SidebarPage.home.obs;
  final profil = DashboardProfile(
      image: AssetImage(ImageRasterConstant.topMusic1),
      name: "Gia Developer",
      email: "giagamedeveloper@gmail.com");
}
