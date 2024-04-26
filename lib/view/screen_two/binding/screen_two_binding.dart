import 'package:e_commerce/view/screen_two/controller/screen_two_controller.dart';
import 'package:get/get.dart';

class ScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenTwoController());
  }
}
