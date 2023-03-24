import 'package:travel_ui/models/location.dart';

class Listone {
  List<Location> location = [
    Location(
        url: 'assets/images/beach.png',
        name: 'Tower',
        city: 'France',
        rate: 4.2),
    Location(
        url: 'assets/images/mountan.png',
        name: 'hill',
        city: 'Span',
        rate: 4.5),
    Location(
        url: 'assets/images/mountan.png',
        name: 'hill',
        city: 'Span',
        rate: 4.5),
  ];
  List<Location> location2 = [
    Location(
        url: 'assets/images/beach2.png',
        name: 'Tower',
        city: 'France',
        rate: 4.2),
    Location(
        url: 'assets/images/sunset.png', name: 'hill', city: 'Span', rate: 4.5),
  ];

// get data
  List<Location> getShoeList() {
    return location;
  }

  List<Location> getShoeList2() {
    return location2;
  }
}
