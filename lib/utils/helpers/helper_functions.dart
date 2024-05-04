import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:geolocator/geolocator.dart';


class AppHelperFuncions {
  static Color? getColor(String value) {
    //  Define specific colors here which will be matched to the attribute colors and show specific colors

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Balck') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    }
    return Colors.transparent;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop,
                    child: const Text("OK"))
              ]);
        });
  }

  // Navigate to another screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  // Trancate large text
  static String truncateText(String text, int maxLenth) {
    if (text.length <= maxLenth) {
      return text;
    } else {
      return '${{text.substring(0, maxLenth)}}...';
    }
  }

  // Checks if the device is dark mode.
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Get screen size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Get screen height
  static double screenHieght() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // Remove list duplicate
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // Wrap rows of widgets
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }



/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
static Future<Position?> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    // try{
      return await Geolocator.getLastKnownPosition();
    // }catch(_){
    //   return Future.error('Location services are disabled.');
    // }    
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}

static String liveLocation(){
  String location = '';
  LocationSettings locationSettings = const LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 100);
  Geolocator.getPositionStream(locationSettings: locationSettings).listen((Position position) {
    location = '${position.latitude} ${position.longitude}';
    print(location);
   });
   return location;
}


}
