import 'package:get/get_state_manager/get_state_manager.dart';

class EnvironmentController extends GetxController {
  String url = "";

  void setURL(String newURl) {
    url = newURl;
    update();
  }
}
