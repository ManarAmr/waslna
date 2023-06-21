/*import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GoogleMapController? mapController; //contrller for Google map
  Set<Marker> markers = Set(); //markers for google map
  LatLng showLocation = LatLng(26.549999, 31.700001);
  //location to show in map

  @override
 /* void initState() {
    markers.add(Marker( //add marker on google map
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: InfoWindow( //popup info
        title: 'My Custom Title ',
        snippet: 'My Custom Subtitle',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    //you can add more markers here
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:Row(
            children: [
              SizedBox(width: 45,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        backgroundColor: Color.fromARGB(255, 254	,198	,40),
      ),
      body: GoogleMap( //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: CameraPosition( //innital position in map
          target: showLocation, //initial position
          zoom: 10.0, //initial zoom level
        ),
        markers: markers, //markers to show on map
        mapType: MapType.normal, //map type
        onMapCreated: (controller) { //method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }
}*/


/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;
  LatLng _center = LatLng(45.5231, -122.6765); 
  late LocationData currentLocation; 
  Location location = Location();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  void _getLocation() async {
    try {
      currentLocation = await location.getLocation();
      setState(() {
        _center = LatLng(currentLocation.latitude ??0, currentLocation.longitude ??0);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('currentLocation'),
            position: _center, // تعيين الموقع الحالي كموقع العلامة التوضيحية
            infoWindow: InfoWindow(
              title: 'Current Location',
            ),
          ),
        },
      ),
    );
  }
}
*/



/*

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialPosition = CameraPosition(target: LatLng(31.2565,32.2841), zoom: 14);

  static const CameraPosition targetPosition = CameraPosition(target: LatLng(26.549999, 31.700001), zoom: 14.0, bearing: 192.0, tilt: 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor:Color.fromARGB(255, 254	,198	,40),
         title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             //   SizedBox(width: 45,),
                Image.asset('assets/bus5.jpeg',
                fit: BoxFit.cover,
                height: 50,),
                Text(" WASLNA",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
                ),),
              ],
            ) ,
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);

        },
      ),
     /* floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          goToLake();
        },
        label: const Text("To the lake!"),
        icon: const Icon(Icons.directions_boat),
      ),*/
    );
  }

  Future<void> goToLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  }
}*/



import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;
  Set<Marker> markers = Set();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarkers() {
    markers.add(Marker(
      markerId: MarkerId('marker_1'),
      position: LatLng(31.2600, 32.2800),
      infoWindow: InfoWindow(
        title: 'Student 1',
        snippet: 'mohmed ahmed ali',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));

    markers.add(Marker(
      markerId: MarkerId('marker_2'),
      position: LatLng(31.2627, 32.2895),
      infoWindow: InfoWindow(
        title: 'Student 2',
        snippet: 'manar amr elbialy',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));

    markers.add(Marker(
      markerId: MarkerId('marker_3'),
      position: LatLng(31.2620, 32.2920),
      infoWindow: InfoWindow(
        title: 'Student 3',
        snippet: 'safaa samir ',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));

    markers.add(Marker(
      markerId: MarkerId('marker_4'),
      position: LatLng(31.2630, 32.2980),
      infoWindow: InfoWindow(
        title: 'Student 4',
        snippet: 'nayera ahmed ',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));



    // Add more markers here...
  }

  @override
  void initState() {
    super.initState();
    _addMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor:Color.fromARGB(255, 254	,198	,40),
         title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             //   SizedBox(width: 45,),
                Image.asset('assets/bus5.jpeg',
                fit: BoxFit.cover,
                height: 50,),
                Text(" WASLNA",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
                ),),
              ],
            ) ,
        centerTitle: true,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(31.2565, 32.2841),
          zoom: 12.0,
        ),
        markers: markers,
      ),
    );
  }
}