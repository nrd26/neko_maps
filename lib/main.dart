import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neko Maps',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Neko Maps'),
            centerTitle: true,
            backgroundColor:Colors.black),
        drawer: Drawer(
            child: Container()// Populate the Drawer in the next step.
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(17.377778,78.515278),
            zoom: 13,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate:
              'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
          ],
        ),
      ),
    );
  }
}
