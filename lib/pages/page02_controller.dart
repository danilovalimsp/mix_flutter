import 'package:get/get.dart';
import 'package:mix_flutter/core/environment_controller.dart';

class Page02Controller extends GetxController {
  final EnvironmentController environmentController;
  var url = "".obs;

  Page02Controller(this.environmentController);

  @override
  void onInit() {
    super.onInit();

    url.value= environmentController.url;

    update();
  }
}
