import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/constant/colors.dart';
import 'package:get/get.dart';

import 'tab_logic.dart';
import 'tab_state.dart';

class TabPage extends StatelessWidget {
  final TabLogic logic = Get.put(TabLogic());
  final TabState state = Get.find<TabLogic>().state;

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 3;
    return GetBuilder<TabLogic>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: BottomAppBar(
            color: Colors.white,
            child: Row(children: <Widget>[
              Container(height: 49, width: itemWidth, child: tabbar(0)),
              Container(height: 49, width: itemWidth, child: tabbar(1)),
              Container(height: 49, width: itemWidth, child: tabbar(2)),
            ]),
          ),
        ),
        body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: state.pageController,
          itemBuilder: (BuildContext context, int index) {
            return state.pages[index];
          },
        ),
      );
    });
  }

  Widget tabbar(int index) {
    double itemWidth = Get.width / 3;

    //设置默认未选中的状态
    TextStyle style = TextStyle(fontSize: 12, color: MyColors.text_color);
    String imgUrl = state.normalImgUrls[index];
    if (state.currentIndex == index) {
      //选中的话
      style = TextStyle(fontSize: 12, color: Color.fromRGBO(253, 92, 80, 1));
      imgUrl = state.selectedImgUrls[index];
    }
    Widget item = Container(
      alignment: Alignment.center,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: itemWidth,
          height: 49,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            SizedBox(
              height: 7,
            ),
            Image.asset(imgUrl, width: 25, height: 22),
            SizedBox(
              height: 2,
            ),
            Text(
              state.appBarTitles[index],
              style: style,
            )
          ]),
        ),
        onTap: () {
          if (state.currentIndex != index) {
            logic.onChange(index);
          }
        },
      ),
    );
    return item;
//    }
  }
}
