class Subscription {
  String image;
  String name;

  Subscription({required this.image, required this.name});
}

List<Subscription> subscriptions = [
  Subscription(image: "images/1.jpg", name: "John Doe"),
  Subscription(image: "images/2.jpg", name: "Jack Doe"),
  Subscription(image: "images/3.jpg", name: "Johny Doe"),
  Subscription(image: "images/4.jpg", name: "Frank Doe"),
  Subscription(image: "images/5.jpg", name: "Fred Doe"),
];
