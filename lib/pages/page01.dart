import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mix_flutter/pages/page01_controller.dart';

class Page01 extends StatefulWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  _Page01State createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Page01Controller>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Page 01"),
        ),
        body: Center(
          child: Obx(() => Text(controller.url.value)),
        ),
      );
    });
  }
}
