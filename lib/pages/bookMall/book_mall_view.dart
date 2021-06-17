import 'package:flutter/material.dart';
import 'package:flutter_getx_template/components/custom_appbar.dart';
import 'package:flutter_getx_template/components/custom_scaffold.dart';
import 'package:get/get.dart';

import 'book_mall_logic.dart';
import 'book_mall_state.dart';

class BookMallPage extends StatelessWidget {
  final BookMallLogic logic = Get.put(BookMallLogic());
  final BookMallState state = Get.find<BookMallLogic>().state;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: '书城',
        leadType: AppBarBackType.None,
        body: Container(
          width: 100,
          color: Colors.green,
        )
    );
  }
}
