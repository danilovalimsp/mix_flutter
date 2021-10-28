import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mix_flutter/pages/page02_controller.dart';

class Page02 extends StatefulWidget {
  const Page02({ Key? key }) : super(key: key);

  @override
  _Page02State createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  @override
  Widget build(BuildContext context) {
     return GetBuilder<Page02Controller>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Page 02"),
        ),
        body: Center(
          child: Obx(() => Text(controller.url.value)),
        ),
      );
    });
  }
}