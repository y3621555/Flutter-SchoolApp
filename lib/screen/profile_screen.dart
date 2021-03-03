
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../demo_localizations.dart';
import '../drawer_menu.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(DemoLocalizations.of(context).profile),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Pop!'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ), drawer: DrawerMenu()
    );
  }
}