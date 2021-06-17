import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tab_state.dart';

class TabLogic extends GetxController {
  final state = TabState();


  @override
  void onInit() {
    super.onInit();
    state.pageController = PageController(initialPage: state.currentIndex);
  }

  void resetCurrentIndex() {
    state.currentIndex = 0;
    update();
  }

  void onChange(int index) {
    state.currentIndex = index;
    state.pageController.jumpToPage(index);
    update();
  }

  @override
  void onClose() {
    super.onClose();
    // state.pageController?.dispose();
  }



}
