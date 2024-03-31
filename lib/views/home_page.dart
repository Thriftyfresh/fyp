import 'package:bnews/controller/home_controller.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var categoriesList = [
      AppStrings.explore,
      AppStrings.entertainment,
      AppStrings.politics,
      AppStrings.sports,
      AppStrings.travel,
    ];

    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      categoriesList.length,
                      (index) => Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    categoriesList[index].capitalized,
                                    style: AppStyles.bold(
                                        color: index ==
                                                controller
                                                    .currentCategorySelectedIndex
                                            ? AppColors.primaryButton
                                            : AppColors.secondaryText),
                                  )),
                              VxBox()
                                  .size(50, 5)
                                  .color(index ==
                                          controller
                                              .currentCategorySelectedIndex
                                      ? AppColors.primaryButton
                                      : Colors.transparent)
                                  .make()
                            ],
                          )),
                ),
              ),
              10.heightBox,
              VxSwiper.builder(
                  viewportFraction: 1.0,
                  itemCount: 3,
                  onPageChanged: (index) {
                    controller.changeswiperIndex(index);
                  },
                  autoPlay: true,
                  itemBuilder: ((context, index) {
                    return Stack(
                      children: [
                        Container(
                          color: Vx.randomPrimaryColor,
                        ),
                        Positioned(
                          top: 14,
                          left: 10,
                          child: VxBox(
                                  child: Text(
                            "Sport",
                            style: AppStyles.regular(
                                color: AppColors.white, size: 12),
                          ))
                              .color(AppColors.primaryButton)
                              .padding(EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6))
                              .roundedSM
                              .make(),
                        ),
                        Positioned(
                          top: 14,
                          right: 10,
                          child: VxBox(
                                  child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: AppColors.white,
                                size: 14,
                              ),
                              4.widthBox,
                              Text(
                                "211",
                                style: AppStyles.regular(
                                    color: AppColors.white, size: 12),
                              ),
                            ],
                          ))
                              .color(Colors.black26)
                              .padding(EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6))
                              .roundedSM
                              .make(),
                        ),
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 10,
                          child: Column(
                            children: [
                              Text(
                                "Christiano Ronaldo 2024: is still a GOAT"
                                    .allWordsCapitilize(),
                                style:
                                    AppStyles.regular(color: AppColors.white),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 14,
                                    color: AppColors.white,
                                  ),
                                  5.widthBox,
                                  Text(
                                    "29 July, 20",
                                    style: AppStyles.regular(
                                        color: AppColors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ).box.roundedSM.clip(Clip.hardEdge).make();
                  })),
              10.heightBox,
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => VxBox()
                          .size(index == controller.currentSwiperIndex ? 30 : 5,
                              5)
                          .rounded
                          .color(index == controller.currentSwiperIndex
                              ? AppColors.sliderSelectedDark
                              : AppColors.sliderDot)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
            ],
          ),
        ));
  }
}
