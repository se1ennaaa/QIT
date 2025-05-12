import 'package:flutter/material.dart';

class Calculate {
  static int calculateCards(BuildContext context, double width) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = width;
    int crossAxisCount = screenWidth ~/ cardWidth;

    return crossAxisCount;
  }
}
