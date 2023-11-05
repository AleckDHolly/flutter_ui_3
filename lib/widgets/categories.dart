import 'package:flutter/material.dart';
import 'package:flutter_ui_3/components/category_names.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ...categoryNames.map(
              (categoryName) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: categoryName == categoryNames.first
                          ? Colors.orange
                          : const Color.fromARGB(92, 158, 158, 158),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      categoryName,
                      style: TextStyle(
                        color: categoryName == categoryNames.first
                            ? Colors.white
                            : const Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
