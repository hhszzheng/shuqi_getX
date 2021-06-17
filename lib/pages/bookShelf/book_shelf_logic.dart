import 'package:flutter_getx_template/pages/bookShelf/service/book_shelf_service.dart';
import 'package:flutter_getx_template/utils/common_state_controller.dart';
import 'package:get/get.dart';

import 'book_shelf_state.dart';

class BookShelfLogic extends BaseGetXController {
  final state = BookShelfState();



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    state.scrollController.addListener(() {
      var offset = state.scrollController.offset;
      print(offset);
      if (offset < 0) {
        if (state.navAlpha != 0) {
          state.navAlpha = 0;
          update();
        }
      } else if (offset < 50) {
        state.navAlpha = 1 - (50 - offset) / 50;
        update();

      } else if (state.navAlpha != 1) {
        state.navAlpha = 1;
        update();
      }
    });

    getBookList();
  }


  getBookList () async{
    setBusy();
    await BookShelfService.getBookShelfAllNovelList().then((value){
      if(value.isEmpty){
        setEmpty();
      }else{
        state.allNovelList = value;
        setIdle();
      }
      update();
    }).catchError((error){
      setError(message: error.toString());

    });


  }




}
