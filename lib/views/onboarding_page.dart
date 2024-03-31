import 'package:bnews/controller/onboarding_controller.dart';
import 'package:bnews/res/consts/assets.dart';
import 'package:bnews/res/consts/colors.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titles = [
      AppStrings.onboardTitle0,
      AppStrings.onboardTitle1,
      AppStrings.onboardTitle2
    ];
    var desc = [
      AppStrings.onboardDesc0,
      AppStrings.onboardDesc1,
      AppStrings.onboardDesc2
    ];
    return Scaffold(
      body: PageView.builder(
          controller: controller.pageController,
          itemCount: 3,
          onPageChanged: (value) => controller.changeIndex(value),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "${AppAssets.onboarding}$index.jpg",
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        titles[index],
                        style: AppStyles.semibold(size: 16),
                      ),
                      6.heightBox,
                      VxBox()
                          .size(100, 5)
                          .color(AppColors.primaryButton)
                          .rounded
                          .make(),
                      30.heightBox,
                      Text(
                        desc[index],
                        style:
                            AppStyles.regular(color: AppColors.secondaryText),
                      ),
                    ],
                  ),
                ))
              ],
            );
          }),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(primary: AppColors.secondaryButton),
              onPressed: () {
                controller.onContinueOrSkipPressed();
              },
              child: Text(AppStrings.skip,
                  style: AppStyles.semibold(
                    color: AppColors.secondaryText,
                  )),
            ),
            Obx(
              () => Row(
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(index == controller.currentIndex ? 30 : 5, 5)
                        .rounded
                        .color(index == controller.currentIndex
                            ? AppColors.primaryButton
                            : AppColors.sliderDot)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            Obx(
              () => controller.currentIndex < 2
                  ? IconButton(
                      onPressed: () {
                        controller.changePage(controller.currentIndex);
                        controller.onContinueOrSkipPressed();
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.secondaryButton,
                      ))
                  : TextButton(
                      onPressed: () {
                        controller.onContinueOrSkipPressed();
                      },
                      child: Text(
                        AppStrings.continueText,
                        style: AppStyles.semibold(
                            color: AppColors.secondaryButton),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
