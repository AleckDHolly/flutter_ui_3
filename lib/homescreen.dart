import 'package:flutter/material.dart';
import 'package:flutter_ui_3/components/subscriptions.dart';
import 'package:flutter_ui_3/widgets/main_area.dart';
import 'package:flutter_ui_3/widgets/sub_page.dart';
import 'package:flutter_ui_3/widgets/subs.dart';
import 'package:flutter_ui_3/widgets/top_part.dart';

import 'widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TopPart(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: subscriptions.length,
                      itemBuilder: (context, index) {
                        Subscription sub = subscriptions[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SubPage(
                                    title: sub.name,
                                    image: Image(image: sub.image),
                                    index: sub.tag),
                              ),
                            );
                          },
                          child: MainArea(
                            image: Hero(
                              tag: "animation${sub.tag}",
                              child: Image(image: sub.image),
                            ),
                            text: sub.name,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
