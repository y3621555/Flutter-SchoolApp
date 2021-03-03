import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../demo_localizations.dart';
import '../drawer_menu.dart';

class HtmlFeeScreen extends StatefulWidget {
  @override
  HtmlFeeScreenState createState() => HtmlFeeScreenState();
}

class HtmlFeeScreenState extends State<HtmlFeeScreen> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) {
    }WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(DemoLocalizations.of(context).schoolfeeInformation),),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://reg.nuu.edu.tw/p/406-1024-10170,r622.php',
      ),
      //drawer: DrawerMenu(),
    );
  }
}