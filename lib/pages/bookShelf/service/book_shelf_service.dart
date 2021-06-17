import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/constant/key.dart';
import 'package:flutter_getx_template/pages/bookShelf/model/book_shelf_list_model.dart';
import 'package:flutter_getx_template/utils/request.dart';

/// 创建时间：2021/6/17 
/// 作者：zhengyifei
/// 描述：

class BookShelfService {
  
  static Future<List<BookShelfListModel>> getBookShelfAllNovelList () async{
    var response =  await Request().get(ApiUrl.BOOK_SHELF_LIST);
    if(response['state'] == '200' ){
      return response['data']
          .map<BookShelfListModel>((item)=>BookShelfListModel.fromJson(item))
          .toList();
    }else{
      return [];
    }
  }
  
  
  
}