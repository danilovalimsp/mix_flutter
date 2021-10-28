import 'package:get/get.dart';
import 'package:mix_flutter/core/environment_controller.dart';

class Page01Controller extends GetxController {
  final EnvironmentController environmentController;
  var url = "".obs;

  Page01Controller(this.environmentController);

  @override
  void onInit() {
    super.onInit();

    url.value= environmentController.url;

    update();
  }
}
