import 'package:flutter/material.dart';
import 'package:flutter_ui_3/components/subscriptions.dart';

class Subs extends StatelessWidget {
  const Subs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...subscriptions.map((sub) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      foregroundImage: AssetImage(sub.image),
                    ),
                  ),
                  Text(sub.name),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
