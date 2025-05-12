import 'package:flutter/material.dart';

class EditAdButtonScreen extends StatelessWidget {
  const EditAdButtonScreen({
    super.key,
    required this.onTap,
    this.height = 27,
    this.borderRadius = 7,
    this.titleFontSize = 12,
  });

  final VoidCallback onTap;
  final double height;
  final double borderRadius;
  final double titleFontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Color(0xFF068A66),
        ),
        alignment: Alignment.center,
        child: Text(
          'Редактировать',
          style: TextStyle(
            fontSize: titleFontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
