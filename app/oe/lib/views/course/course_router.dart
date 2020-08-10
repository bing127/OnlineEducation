import 'package:oe/router/router_init.dart';
import 'package:fluro/fluro.dart';

import 'pages/course_page.dart';

class CourseRouter implements IRouterProvider{
  static String coursePage = "/course";

  @override
  void initRouter(Router router) {
    router.define(coursePage, handler: Handler(handlerFunc: (_, params) => CoursePage()));
  }
}