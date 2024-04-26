import 'package:e_commerce/view/screen_one/controller/screen_one_controller.dart';
import 'package:get/get.dart';

class ScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenOneController());
  }
}
