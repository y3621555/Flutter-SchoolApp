import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../demo_localizations.dart';

class SchoolFeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(DemoLocalizations.of(context).schoolfee),),
      body: Column(
          children: <Widget> [
            OutlineButton(
                onPressed: (){
                  Navigator.pushNamed(
                    context,
                    '/html-fee',
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.monetization_on , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "繳費相關資訊",
                          textAlign: TextAlign.center,
                        )
                    )
                  ],
                ),
                highlightedBorderColor: Colors.orange,
                //padding: new EdgeInsets.fromLTRB(150.0, 10.0, 100.0, 10.0),
                borderSide: BorderSide(width: 2.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)
                )
            ),

            OutlineButton(
                onPressed: (){
                  Navigator.pushNamed(
                    context,
                    '/tw-bank',
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.account_balance , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "台銀學雜費入口",
                          textAlign: TextAlign.center,
                        )
                    )
                  ],
                ),
                highlightedBorderColor: Colors.orange,
                //padding: new EdgeInsets.fromLTRB(150.0, 10.0, 100.0, 10.0),
                borderSide: BorderSide(width: 2.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)
                )
            ),
          ]
      ),
    );
  }
}