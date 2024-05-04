import 'package:baza/utils/constants/colors.dart';
import 'package:baza/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'common/widgets/icons/circular_icon.dart';

const apiKey = "v3XSrX3LVo5zlCy0QWje";
const styleUrl = "https://api.maptiler.com/maps/streets-v2/style.json";

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Map();
  }
}

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State createState() => MapState();
}

class MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          SlidingUpPanel(
          borderRadius: BorderRadius.circular(15),
          minHeight:AppSizes.appPanelHight,  
        panel:  const Padding(
           padding: EdgeInsets.only(top: 40),
          child:Text("This is the sliding Widget")),
        color: AppColors.white,
        parallaxEnabled: true,
            backdropEnabled: true,
        body: Stack(
        children: [ 
          MaplibreMap(
          styleString: "$styleUrl?key=$apiKey",
          myLocationEnabled: true,
          initialCameraPosition: const CameraPosition(target: LatLng(-8.838333, 13.234444), zoom: 16),        
          trackCameraPosition: true,
        ),
          Positioned( left: AppSizes.defaultItems,top: AppSizes.defaultItems, child:AppCircularIcon( icon: Iconsax.menu, onPressed: () {  }, backgroundColor: AppColors.white,)),
        
        ]
           ) ),
      );
    
  }
}
