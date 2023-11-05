import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("images/avatar.jpg"),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back 👋",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Aleck D.",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
