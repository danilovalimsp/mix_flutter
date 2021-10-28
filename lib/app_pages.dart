import 'package:get/get.dart';
import 'package:mix_flutter/pages/page01.dart';
import 'package:mix_flutter/pages/page01_binding.dart';
import 'package:mix_flutter/pages/page02.dart';
import 'package:mix_flutter/pages/page02_binding.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: '/page01', page: () => Page01(), binding: Page01Binding()),
    GetPage(name: '/page02', page: () => Page02(), binding: Page02Binding()),
  ];
}
