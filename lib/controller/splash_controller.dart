import 'package:bnews/res/routes/route_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  @override
  void onInit() {
    navigateScreen();
    super.onInit();
  }

  navigateScreen() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offNamed(RouteName.onboarding);
    });
  }
}
