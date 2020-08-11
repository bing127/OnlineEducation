import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'dart:io';
import 'package:sp_util/sp_util.dart';

import 'package:oe/app/init_page.dart';
import 'package:oe/app/exception_page.dart';
void main() async{
  ScreenUtil.init(designSize: Size(750, 1334), allowFontScaling: false);
  /// 确保初始化
  WidgetsFlutterBinding.ensureInitialized();
  /// 配置初始化
  await SpUtil.getInstance();
  /// 自定义报错页面
  ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails){
    print(flutterErrorDetails.toString());
    return ExceptionPage();
  };
  // 沉浸式状态栏
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(InitPage());
}
