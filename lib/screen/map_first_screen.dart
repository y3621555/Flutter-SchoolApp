import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../demo_localizations.dart';


class FirstMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(DemoLocalizations.of(context).schoolmap),),
        body: PhotoView(
          imageProvider: AssetImage("assets/images/第一校區.jpg"),
        )
    );
  }
}