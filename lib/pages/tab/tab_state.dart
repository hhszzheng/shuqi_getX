import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_template/pages/bookMall/book_mall_view.dart';
import 'package:flutter_getx_template/pages/bookShelf/book_shelf_view.dart';
import 'package:flutter_getx_template/pages/home/home_view.dart';

class TabState {

  List<Widget> pages = [];

  final List<String> appBarTitles = ['书架', '书城', '我的'];

  int currentIndex = 0;
  late PageController pageController;

  List normalImgUrls = [

    "img/tab_bookshelf_n.png",
    "img/tab_bookstore_n.png",
    "img/tab_me_n.png",

  ];
  List selectedImgUrls = [
    "img/tab_bookshelf_p.png",
    "img/tab_bookstore_p.png",
    "img/tab_me_p.png",
  ];

  TabState() {

    pages = [BookShelfPage(),BookMallPage(),HomePage()];

    ///Initialize variables
  }
}
