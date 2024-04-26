import 'package:e_commerce/route/app_route.dart';
import 'package:e_commerce/view/splash_screen/model/splash_model.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(
        const Duration(
          milliseconds: 3000,
        ), () {
      Get.offNamed(AppRoute.screenone);
    });
  }
}
