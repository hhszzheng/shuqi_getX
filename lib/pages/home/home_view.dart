import 'package:flutter/material.dart';
import 'package:flutter_getx_template/components/components.dart';
import 'package:flutter_getx_template/components/custom_scaffold.dart';
import 'package:flutter_getx_template/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: MyAppBar(
        centerTitle: true,
        title: MyTitle('首页'),
        leadingType: AppBarBackType.None,
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    );
  }
}
