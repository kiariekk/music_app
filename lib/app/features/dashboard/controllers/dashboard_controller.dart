part of dashboard;

class DashboardController extends GetxController {
  final pageSelected = SidebarPage.home.obs;
  final musicPlay = 0.6.obs;
  final profil = DashboardProfile(
      image: AssetImage(ImageRasterConstant.logo),
      name: "Gia Developer",
      email: "giagamedeveloper@gmail.com");
}
