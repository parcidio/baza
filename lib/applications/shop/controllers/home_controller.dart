import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final couraselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    couraselCurrentIndex.value = index;
  }
}
