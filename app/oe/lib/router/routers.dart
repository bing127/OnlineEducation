import 'package:flutter/material.dart';
import 'package:oe/app/splash_page.dart';
import 'package:oe/app/start_page.dart';
import 'package:oe/router/router_init.dart';
import 'package:fluro/fluro.dart';
import 'package:oe/app/nofound_page.dart';
import 'package:oe/app/webview_page.dart';


//页面
import 'package:oe/views/account/account_router.dart';
import 'package:oe/views/home/home_router.dart';
import 'package:oe/views/skill/skill_router.dart';
import 'package:oe/views/course/course_router.dart';
import 'package:oe/views/my/my_router.dart';

class Routes {

  static String home = "/home";
  static String webViewPage = "/webview";
  static String splashPage = "/splash";

  static List<IRouterProvider> _listRouter = [];

  static void configureRoutes(Router router) {
    /// 指定路由跳转错误返回页
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        debugPrint("未找到目标页");
        return WidgetNotFound();
      });

    router.define(home, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) => StartPage()
      )
    );

    router.define(webViewPage, handler: Handler(handlerFunc: (_, params){
      String url = params['url']?.first;
      String title = params['title']?.first;
      return WebviewPage(url: url,title:title);
    }));


    router.define(splashPage, handler: Handler(handlerFunc: (_, params)=> SplashPage()));

    _listRouter.clear();
    /// 各自路由由各自模块管理，统一在此添加初始化
    _listRouter.add(AccountRouter());
    _listRouter.add(HomeRouter());
    _listRouter.add(SkillRouter());
    _listRouter.add(CourseRouter());
    _listRouter.add(MyRouter());

    /// 初始化路由
    _listRouter.forEach((routerProvider){
      routerProvider.initRouter(router);
    });
  }
}
