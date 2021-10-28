import 'package:get/get.dart';
import 'package:mix_flutter/core/environment_controller.dart';
import 'package:mix_flutter/main_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(EnvironmentController());
    Get.put(MainController(Get.find()));
  }
}
