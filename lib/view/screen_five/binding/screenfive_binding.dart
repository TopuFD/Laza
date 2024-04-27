import 'package:e_commerce/view/screen_five/controller/screenfive_controller.dart';
import 'package:get/get.dart';

class ScreenFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenFiveController());
  }
}
