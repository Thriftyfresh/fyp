import 'package:bnews/controller/authentication_controller.dart';
import 'package:bnews/res/consts/assets.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            15.heightBox,
            Text(
              AppStrings.welcome,
              style: AppStyles.semibold(),
            ),
            10.heightBox,
            Text(
              AppStrings.signInToContinue,
              style: AppStyles.regular(color: AppColors.secondaryText),
            ),
            Spacer(),
            VxBox(
              child: Text(
                AppStrings.signInGoogle,
                style: AppStyles.regular(color: AppColors.white),
              ),
            )
                .width(context.screenWidth - 20)
                .color(AppColors.google)
                .padding(EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),
            10.heightBox,
            VxBox(
              child: Text(
                AppStrings.signInToFB,
                style: AppStyles.regular(color: AppColors.white),
              ),
            )
                .width(context.screenWidth - 20)
                .color(AppColors.fb)
                .padding(EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),
            Spacer(),
            TextButton(
              onPressed: () {
                controller.navigateToLogin();
              },
              child: Text(
                AppStrings.continueWithEmail,
                style: AppStyles.regular(size: 14),
              ),
            ),
            10.heightBox,
            Text(
              AppStrings.privacyPolicyTermsCondition,
              style: AppStyles.regular(color: AppColors.secondaryText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.privacyPolicy,
                    style: AppStyles.regular(size: 12),
                  ),
                ),
                Text(
                  "and",
                  style: AppStyles.regular(
                      size: 12, color: AppColors.secondaryText),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.termsConditions,
                    style: AppStyles.regular(size: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
