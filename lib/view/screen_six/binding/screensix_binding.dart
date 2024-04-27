import 'package:e_commerce/view/screen_six/controller/screensix_controller.dart';
import 'package:get/get.dart';

class ScreenSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenSixController());
  }
}
