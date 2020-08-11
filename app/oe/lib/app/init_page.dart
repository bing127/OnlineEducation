import 'package:flutter/material.dart';
import 'package:oe/app/start_page.dart';
import 'package:oe/router/application.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class InitPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      navigatorKey: GlobalKey(debugLabel: "oe_app_global_key"),
      title: 'OnlineEducation',
      showPerformanceOverlay: false, //显示性能标签
      debugShowCheckedModeBanner: false,
      checkerboardRasterCacheImages: false,
      checkerboardOffscreenLayers: false,
      showSemanticsDebugger: false, // 显示语义视图
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US')
      ],
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), // 或者 MediaQueryData.fromWindow(WidgetsBinding.instance.window).copyWith(textScaleFactor: 1.0),
          child: child,
        );
      },
      locale: const Locale("en", "US"),
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        return locale;
      },
    );
  }
}
