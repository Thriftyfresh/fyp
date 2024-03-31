import 'package:bnews/controller/login_controller.dart';
import 'package:bnews/res/consts/colors.dart';
import 'package:bnews/res/consts/strings.dart';
import 'package:bnews/res/consts/styles.dart';
import 'package:bnews/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                controller.navigateAsGuest();
              },
              child: Text(
                AppStrings.continueAsGuest,
                style: AppStyles.semibold(size: 12),
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppStrings.login,
            style: AppStyles.semibold(size: 16),
          ),
          CustomTextField(
            hint: AppStrings.emailHint,
            label: AppStrings.email,
          ),
          CustomTextField(
            hint: AppStrings.passwordHint,
            label: AppStrings.password,
            isPassword: true,
          ),
          30.heightBox,
          SizedBox(
              width: context.screenWidth,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryButton,
                ),
                onPressed: () {},
                child: Text(
                  AppStrings.login,
                  style: TextStyle(color: AppColors.white),
                ),
              )),
          10.heightBox,
          Row(
            children: [
              Text(
                AppStrings.dontHaveAccount,
                style: AppStyles.regular(color: AppColors.secondaryText),
              ),
              TextButton(
                  onPressed: () {
                    controller.navigateToSignup();
                  },
                  child: Text(
                    AppStrings.signUp,
                    style: AppStyles.regular(color: AppColors.primaryText),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
