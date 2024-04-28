import 'package:e_commerce/view/screen_eight/controller/screeneight_controller.dart';
import 'package:get/get.dart';

class ScreeneightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenEightController());
  }
}
