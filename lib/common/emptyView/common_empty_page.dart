import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/constant/constants.dart';
import 'package:flutter_getx_template/utils/load_image.dart';



/// 创建时间：2021/3/22 
/// 作者：zhengyifei
/// 描述：

class CommonEmptyPage extends StatelessWidget {

 final double? topHeight;
 final double? viewHeight;
 final bool isNetworkFail;
 final Function ()reloadData;
  CommonEmptyPage({this.viewHeight,this.topHeight,this.isNetworkFail=false,required this.reloadData});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: viewHeight??ScreenUtil.getInstance().screenHeight,
      color: MyColors.bg_color,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: topHeight??150),
          LoadAssetImage('common_empty_back',width: 183,fit: BoxFit.fill,),
          SizedBox(height: 17),
          Text(
            isNetworkFail==true?'网络错误':'暂无数据',
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.65),
                fontSize: Dimensions.font_sp18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 17),
          isNetworkFail?RaisedButton(
            child: Text('重新加载'),
            onPressed: (){
              reloadData();
            },
          ):Container()


        ],
      ),
    );
  }
}