import 'package:flutter/material.dart';
import 'package:flutter_getx_template/pages/tab/tab_logic.dart';
import 'package:get/get.dart';

class TabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabLogic>(() => TabLogic());
  }
}
