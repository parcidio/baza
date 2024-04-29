import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          
          body: content(),
        ),
      ),
    );
  }
  
  content() {
    return FlutterMap(options:    MapOptions(
      initialCenter: LatLng( -8.838333, 13.234444),
      initialZoom: 13,
    ), children: [openStreetMap]);
  }
}
TileLayer get openStreetMap => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'com.example.app',
);