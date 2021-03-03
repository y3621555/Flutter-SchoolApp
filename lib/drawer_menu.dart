

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'demo_localizations.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text('學號'),
            accountEmail: new Text('email@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/下載.png')
            ),
            otherAccountsPictures: <Widget>[
              Icon(Icons.edit, color: Colors.white),
            ],
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).home),
            trailing: Icon(Icons.home),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).profile),
            trailing: Icon(Icons.account_circle),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).calendar),
            trailing: Icon(Icons.date_range),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/date');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).map),
            trailing: Icon(Icons.gps_fixed),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/map');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).contact),
            trailing: Icon(Icons.mail_outline),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contact');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).setting),
            trailing: Icon(Icons.settings),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/setting');
            },
          ),
          ListTile(
            title: Text(DemoLocalizations.of(context).logout),
            trailing: Icon(Icons.logout),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.popAndPushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }

}