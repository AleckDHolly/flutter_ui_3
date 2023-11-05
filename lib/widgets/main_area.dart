import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainArea extends StatelessWidget {
  MainArea({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: const Color.fromARGB(116, 158, 158, 158),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            foregroundImage: AssetImage("images/1.jpg"),
                          ),
                          const VerticalDivider(
                            width: 10,
                          ),
                          Text(text)
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text("Subscribe"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    bottom: 10,
                  ),
                  child: Text("Nothing really important."),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
