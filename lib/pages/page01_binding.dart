import 'package:get/get.dart';
import 'package:mix_flutter/pages/page01_controller.dart';

class Page01Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page01Controller>(() => Page01Controller(Get.find()));
  }
}
