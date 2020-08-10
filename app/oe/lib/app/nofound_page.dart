import 'package:flutter/material.dart';

class WidgetNotFound extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("页面不存在"),
          elevation: 0,
        ),
        body: Center(
          child: Text("页面不存在"),
        )
    );
  }
}
