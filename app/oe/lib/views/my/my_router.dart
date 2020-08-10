import 'package:oe/router/router_init.dart';
import 'package:fluro/fluro.dart';

import 'pages/my_page.dart';

class MyRouter implements IRouterProvider{
  static String myPage = "/my";

  @override
  void initRouter(Router router) {
    router.define(myPage, handler: Handler(handlerFunc: (_, params) => MyPage()));
  }
}