import 'package:flutter/material.dart';

class WebviewPage extends StatefulWidget {

  const WebviewPage({
    Key key,
    @required this.url,
    this.title,
  }) :assert(url == null,
    'url is required'
    ), super(key: key);

  final String title;
  final String url;

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
