import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home_screen.dart';

class LoginSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new HomeScreen(),
      title: new Text(
        '正在登入聯合大學App...',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.asset(
          'assets/images/load.png',
      ),
      photoSize: 100.0,
      backgroundColor: Colors.black12,
      loaderColor: Colors.red,
    );
  }
}