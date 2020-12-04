import 'package:animation_day_night/models/user.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> users;

  const TravelSpot({this.name, this.image, this.date, this.users});
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Cherea Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 12, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Megical World",
    image: "assets/images/Magical_World.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Lazegj Mountains",
    image: "assets/images/Red_Mountains.png",
    date: DateTime(2020, 12, 07),
  ),
];
