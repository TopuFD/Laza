import 'package:e_commerce/view/screen_three/controller/screen_three_controller.dart';
import 'package:get/get.dart';

class ScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenThreeController());
  }
}
