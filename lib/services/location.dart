import 'dart:async';
import 'package:geolocator/geolocator.dart';

class Location {
  late double glatitude;
  late double glongitude;
  late Position pos;
  late String city;
  late String postalCode;
  final Geolocator geolocator = Geolocator();

  Future<String> getCurrentlocation() async {
    try {
      pos = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
      glongitude = pos.longitude;
      glatitude = pos.latitude;
      _getAddressFromLatLng();
    } catch (e) {
      print(e);
    }
    return city;
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(pos.latitude, pos.longitude);

      Placemark place = p[0];
      city = "${place.locality}";
      postalCode = "${place.postalCode}";
      print(city);
    } catch (e) {
      print(e);
    }
  }
}
