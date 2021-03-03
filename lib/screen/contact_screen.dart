import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../demo_localizations.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(DemoLocalizations.of(context).contact),),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your message',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return '請輸入訊息';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}