import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

import '../demo_localizations.dart';
import '../drawer_menu.dart';

class MapScreen extends StatelessWidget {

  openMapsSheet_1(context) async {
    try {
      final coords = Coords(24.546661244769396, 120.8123977316275);
      final title = "聯合大學二坪校區";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),

                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  openMapsSheet_2(context) async {
    try {
      final coords = Coords(24.53903083535393, 120.79156736357862);
      final title = "聯合大學八甲校區";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),

                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(DemoLocalizations.of(context).map),),
        body: Column(
          children: <Widget> [
            OutlineButton(
                onPressed: (){
                  openMapsSheet_1(context);
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.zoom_out_map , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "二坪校區地圖",
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
                  openMapsSheet_2(context);
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.zoom_out_map , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "八甲校區地圖",
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
                    '/first-map',
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.zoom_out_map , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "二坪校區地圖(圖片版)",
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
                    '/second-map',
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.zoom_out_map , size: 30.0 )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "八甲校區地圖(圖片版)",
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
          ],
        ),
      drawer: DrawerMenu(),
      );
  }
}