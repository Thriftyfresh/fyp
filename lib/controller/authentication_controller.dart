import 'package:get/get.dart';
import '../res/routes/route_name.dart';

class AuthenticationController extends GetxController {
  AuthenticationController();

  navigateToLogin() {
    Get.toNamed(RouteName.login);
  }
}
