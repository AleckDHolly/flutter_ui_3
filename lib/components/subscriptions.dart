import 'package:flutter/material.dart';

class Subscription {
  AssetImage image;
  String name;
  int tag;

  Subscription({required this.image, required this.name, required this.tag});
}

List<Subscription> subscriptions = [
  Subscription(image: const AssetImage("images/1.jpg"), name: "John Doe", tag: 1),
  Subscription(image: const AssetImage("images/2.jpg"), name: "Jack Doe", tag: 2),
  Subscription(image: const AssetImage("images/3.jpg"), name: "Johny Doe", tag: 3),
  Subscription(image: const AssetImage("images/4.jpg"), name: "Frank Doe", tag: 4),
  Subscription(image: const AssetImage("images/5.jpg"), name: "Fred Doe", tag: 5),
];
