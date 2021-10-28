import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mix_flutter/app_pages.dart';
import 'package:mix_flutter/core/app_bindings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/page01",
      initialBinding: AppBindings(),
      defaultTransition: Transition.cupertino,
      getPages: AppPages.pages,
    );
  }
}
