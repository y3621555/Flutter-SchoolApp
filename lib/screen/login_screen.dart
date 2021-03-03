import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../demo_localizations.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



/// This is the private State class that goes with MyStatefulWidget.
class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(DemoLocalizations.of(context).login),),
      body: Column(
        children: [
          Image.asset(
              'assets/images/load.png',
            width: 290,
            height: 260,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Your ID',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your ID';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Your password',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          RaisedButton.icon(
            icon: Icon(Icons.login),
            label: Text(DemoLocalizations.of(context).login),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/login-splash',
              );
            },
          ),
          RaisedButton.icon(
            icon: Icon(Icons.account_circle_outlined),
            label: Text( DemoLocalizations.of(context).signup ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/sign-up',
              );
            },
          ),
          RaisedButton(
            child: Text(DemoLocalizations.of(context).forgetpassword),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/forget-password',
              );
            },
          ),
        ],
      ),
    );
  }
}