import 'package:e_commerce/view/screen_four/controller/screenfour_controller.dart';
import 'package:get/get.dart';

class ScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenFourController());
  }
}
