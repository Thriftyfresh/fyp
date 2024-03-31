import 'package:bnews/controller/signup_controller.dart';
import 'package:bnews/res/consts/colors.dart';
import 'package:bnews/res/consts/strings.dart';
import 'package:bnews/res/consts/styles.dart';
import 'package:bnews/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/login_controller.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppStrings.signUp,
            style: AppStyles.semibold(size: 16),
          ),
          CustomTextField(
            hint: AppStrings.nameHint,
            label: AppStrings.name,
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
                  AppStrings.signUp,
                  style: TextStyle(color: AppColors.white),
                ),
              )),
          10.heightBox,
          Row(
            children: [
              Text(
                AppStrings.alreadyHaveAccount,
                style: AppStyles.regular(color: AppColors.secondaryText),
              ),
              TextButton(
                  onPressed: () {
                    controller.NavigateBack();
                  },
                  child: Text(
                    AppStrings.login,
                    style: AppStyles.regular(color: AppColors.primaryText),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
