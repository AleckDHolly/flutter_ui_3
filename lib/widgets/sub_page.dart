import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubPage extends StatelessWidget {
  SubPage(
      {super.key,
      required this.image,
      required this.index,
      required this.title});
  Widget image;
  int index;
  String title;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            leading: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )),
        body: Hero(
          tag: "animation$index",
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
