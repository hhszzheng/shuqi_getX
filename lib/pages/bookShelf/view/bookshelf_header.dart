import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/constant/colors.dart';
import 'package:flutter_getx_template/pages/bookShelf/model/book_shelf_list_model.dart';
import 'package:get/get.dart';

import 'bookshelf_cloud_widget.dart';


class BookshelfHeader extends StatefulWidget {
  final BookShelfListModel novel;

  BookshelfHeader(this.novel);

  @override
  _BookshelfHeaderState createState() => _BookshelfHeaderState();
}

class _BookshelfHeaderState extends State<BookshelfHeader> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    var bgHeight = width / 0.9;
    var height = Get.mediaQuery.padding.top + 250;
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: height - bgHeight,
            child: Image.asset(
              'img/bookshelf_bg.png',
              fit: BoxFit.cover,
              width: width,
              height: bgHeight,
            ),
          ),
          Positioned(
            bottom: 0,
            child: BookshelfCloudWidget(
              animation: animation,
              width: width,
            ),
          ),
          buildContent(context),
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    BookShelfListModel novel = this.widget.novel;

    var width = Get.width;
    return Container(
      width: width,
      padding: EdgeInsets.fromLTRB(15, 54 + Get.mediaQuery.padding.top, 10, 0),
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          // AppNavigator.pushNovelDetail(context, novel);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              child: CachedNetworkImage(imageUrl: novel.bookCover??'', width: 120, height: 160),
              decoration: BoxDecoration(boxShadow: [BoxShadow(color: Color(0x22000000), blurRadius: 8)]),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(novel.bookname??'', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Text('读至0.2%     继续阅读 ', style: TextStyle(fontSize: 14, color: MyColors.bg_color)),
                      Image.asset('img/bookshelf_continue_read.png'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
