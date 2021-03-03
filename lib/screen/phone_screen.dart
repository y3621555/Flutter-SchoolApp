import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../demo_localizations.dart';

class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(DemoLocalizations.of(context).phone),),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            OutlineButton(
                onPressed: (){
                  launch('tel:037-381000');
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.local_phone_rounded , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "聯合大學總機",
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
                  launch('tel:037-38-1801');
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.local_phone_rounded , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "校安中心(二坪)",
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
                  launch('tel:037-38-2802');
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.local_phone_rounded , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "校安中心(八甲北門)",
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
                  launch('tel:037-38-2803');
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.local_phone_rounded , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "校安中心(八甲中門)",
                          textAlign: TextAlign.center,
                        )
                    )
                  ],
                ),
                highlightedBorderColor: Colors.orange,
                //padding: new EdgeInsets(150.0, 10.0, 100.0, 10.0),
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