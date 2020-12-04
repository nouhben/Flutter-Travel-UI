class User {
  final String name, image;

  const User({this.name, this.image});
}

// Demo List of Top Travelers
List<User> topTravelers = [users[0], users[1], users[2], users[3]];

// demo users
List<User> users = [
  User(name: "James", image: "assets/images/james.png"),
  User(name: "John", image: "assets/images/John.png"),
  User(name: "Marry", image: "assets/images/marry.png"),
  User(name: "Rosy", image: "assets/images/rosy.png"),
];
