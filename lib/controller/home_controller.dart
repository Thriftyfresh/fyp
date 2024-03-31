import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();

  final _currentCategorySelectedIndex = 0.obs;
  get currentCategorySelectedIndex => this._currentCategorySelectedIndex.value;
  set currentCategorySelectedIndex(value) =>
      this._currentCategorySelectedIndex.value = value;

  final _currentSwiperIndex = 0.obs;
  get currentSwiperIndex => this._currentSwiperIndex.value;
  set currentSwiperIndex(value) => this._currentSwiperIndex.value = value;

  changeswiperIndex(int value) {
    currentSwiperIndex = value;
  }
}
