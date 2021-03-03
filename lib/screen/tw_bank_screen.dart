import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../demo_localizations.dart';
import '../drawer_menu.dart';

class TWFeeScreen extends StatefulWidget {
  @override
  TWFeeScreenState createState() => TWFeeScreenState();
}

class TWFeeScreenState extends State<TWFeeScreen> {
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
      appBar: AppBar(title: Text(DemoLocalizations.of(context).twbank),),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://school.bot.com.tw/newTwbank/index.aspx',
      ),
      //drawer: DrawerMenu(),
    );
  }
}