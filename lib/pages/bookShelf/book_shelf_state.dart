import 'package:flutter/material.dart';
import 'package:flutter_getx_template/pages/bookShelf/model/book_shelf_list_model.dart';

class BookShelfState {


  List<BookShelfListModel> allNovelList = [];

  ScrollController scrollController = ScrollController();

  double navAlpha = 0;

  BookShelfState() {
    ///Initialize variables
  }
}
