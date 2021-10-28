import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mix_flutter/core/environment_controller.dart';

const platform = MethodChannel('mix-channel');

class MainController extends GetxController {
  final EnvironmentController environmentController;

  MainController(this.environmentController);

  @override
  void onInit() {
    super.onInit();
    setupListeners();
    getEnvironmentURL();
  }

  void setupListeners() {
    platform.setMethodCallHandler((call) async {
      if (call.method == "setRoute") {
        Get.offAllNamed(call.arguments);
      }
      return null;
    });
  }

  getEnvironmentURL() async {
    var response = await platform.invokeMethod("getVMURL");
    setEnvironmentURL(response);
  }

  setEnvironmentURL(String url) {
    environmentController.setURL(url);
  }
}
