
import 'dart:io';

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../demo_localizations.dart';
import '../drawer_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
        appBar: AppBar(title: Text(DemoLocalizations.of(context).home),),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.nuu.edu.tw',
        ),


        floatingActionButton: FabCircularMenu(
            alignment: Alignment.bottomRight,
            ringColor: Colors.black12,
            ringDiameter: 500.0,
            ringWidth: 150.0,
            fabSize: 64.0,
            fabElevation: 8.0,
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/school-fee',
                  );
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.monetization_on),
              ),

              RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/phone',
                  );
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.phone),
              ),

              RawMaterialButton(
                onPressed: () {
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.assignment),
              ),
            ]
        ),
        drawer: DrawerMenu(),
    );
  }
}