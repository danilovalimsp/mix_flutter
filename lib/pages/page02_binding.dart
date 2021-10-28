import 'package:get/get.dart';
import 'package:mix_flutter/pages/page02_controller.dart';

class Page02Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page02Controller>(() => Page02Controller(Get.find()));
  }
}
