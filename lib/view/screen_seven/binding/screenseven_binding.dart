import 'package:e_commerce/view/screen_seven/controller/screenseven_controller.dart';
import 'package:get/get.dart';

class ScreenSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenSevenController());
  }
}
