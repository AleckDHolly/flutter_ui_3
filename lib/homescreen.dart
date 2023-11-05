import 'package:flutter/material.dart';
import 'package:flutter_ui_3/widgets/main_area.dart';
import 'package:flutter_ui_3/widgets/subs.dart';
import 'package:flutter_ui_3/widgets/top_part.dart';

import 'widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopPart(),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(62, 158, 158, 158),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Subscriptions",
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: -2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Subs(),
              const Categories(),
              MainArea(
                image: "images/1.jpg",
                text: "Video 1",
              ),
              MainArea(
                image: "images/2.jpg",
                text: "Video 1",
              ),
              MainArea(
                image: "images/3.jpg",
                text: "Video 1",
              ),
              MainArea(
                image: "images/4.jpg",
                text: "Video 1",
              ),
              MainArea(
                image: "images/5.jpg",
                text: "Video 1",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
