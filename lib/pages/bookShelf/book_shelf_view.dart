import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_template/common/constant/colors.dart';
import 'package:flutter_getx_template/common/emptyView/common_empty_page.dart';
import 'package:flutter_getx_template/common/emptyView/view_state_widget.dart';
import 'package:flutter_getx_template/components/components.dart';
import 'package:flutter_getx_template/pages/bookShelf/model/book_shelf_list_model.dart';
import 'package:flutter_getx_template/pages/bookShelf/view/bookshelf_header.dart';
import 'package:get/get.dart';

import 'book_shelf_logic.dart';
import 'book_shelf_state.dart';

class BookShelfPage extends StatelessWidget {
  final BookShelfLogic logic = Get.put(BookShelfLogic());
  final BookShelfState state = Get
      .find<BookShelfLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<BookShelfLogic>(
          builder: (controller){
            if (controller.isBusy) {
              return ViewStateBusyWidget();
            }else if(controller.isError){
              // Toast.showError('请求失败');
              return CommonEmptyPage(isNetworkFail: true,reloadData: (){
                controller.getBookList();
              },);
            }
            return AnnotatedRegion(
              value: state.navAlpha > 0.5 ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
              child: Stack(
                children: [
                  CustomScrollView(
                    controller: state.scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: state.allNovelList.length>0?BookshelfHeader(state.allNovelList[0]):Container(),
                      ),
                      bookSliverGridView(),
                    ],
                  ),
                  buildNavigationBar()
                ],
              )
            );
          },
        )
    );
  }

  Widget bookSliverGridView() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 20,childAspectRatio: 0.75),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        BookShelfListModel model = state.allNovelList[index];
        return Container(
          child: CachedNetworkImage(
              imageUrl: model.bookCover??'',
              fit: BoxFit.fitWidth,)
        );
      }, childCount: state.allNovelList.length),
    );
  }

  Widget buildNavigationBar() {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 0,
          child: Container(
            margin: EdgeInsets.fromLTRB(5, Get.mediaQuery.padding.top, 0, 0),
            child: buildActions(Colors.white),
          ),
        ),
        Opacity(
          opacity: state.navAlpha,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, Get.mediaQuery.padding.top, 0, 0),
            height: Get.mediaQuery.padding.top + kToolbarHeight,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(width: 103),
                Expanded(
                  child: Text(
                    '书架',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                buildActions(MyColors.darkGray),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildActions(Color iconColor) {
    return Row(children: <Widget>[
      Container(
        height: kToolbarHeight,
        width: 44,
        child: Image.asset('img/actionbar_checkin.png', color: iconColor),
      ),
      Container(
        height: kToolbarHeight,
        width: 44,
        child: Image.asset('img/actionbar_search.png', color: iconColor),
      ),
      SizedBox(width: 15)
    ]);
  }
}
