import 'package:oe/router/router_init.dart';
import 'package:fluro/fluro.dart';

import 'pages/skill_page.dart';

class SkillRouter implements IRouterProvider{
  static String skillPage = "/skill";

  @override
  void initRouter(Router router) {
    router.define(skillPage, handler: Handler(handlerFunc: (_, params) => SkillPage()));
  }
}