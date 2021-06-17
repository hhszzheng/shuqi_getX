import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 创建时间：2021/4/25 
/// 作者：zhengyifei
/// 描述：
///
/// 页面状态类型
enum ViewState {
  idle,
  busy, //加载中
  empty, //无数据
  error, //加载失败
}

class BaseGetXController extends GetxController{
  ViewState _viewState = ViewState.busy;
  ViewState get viewState => _viewState;
  set viewState(ViewState viewState) {
    _viewState = viewState;
    update();
  }

  bool get isBusy => viewState == ViewState.busy;

  bool get isIdle => viewState == ViewState.idle;

  bool get isEmpty => viewState == ViewState.empty;

  bool get isError => viewState == ViewState.error;

  /// set
  void setIdle() {
    viewState = ViewState.idle;
  }

  void setBusy() {
    viewState = ViewState.busy;
  }

  void setEmpty() {
    viewState = ViewState.empty;
  }

  void setError({e, stackTrace, required String message}) {
    viewState = ViewState.error;
  }






}