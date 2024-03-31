import 'package:bnews/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:bnews/res/consts/consts.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            Text(
              "ELITE NEWS",
              style: AppStyles.semibold(size: 16),
            ),
            Spacer(),
            Text(
              AppStrings.poweredBy,
              style: AppStyles.regular(size: 12),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
