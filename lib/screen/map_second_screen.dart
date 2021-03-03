import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../demo_localizations.dart';


class SecondMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(DemoLocalizations.of(context).schoolmap),),
        body: PhotoView(
          imageProvider: AssetImage("assets/images/第二校區.jpg"),
        )
    );
  }
}