import 'package:flutter/material.dart';

class SafeAreaWrapper extends StatelessWidget {
  final Widget child;
  final bool isTopEnabled;
  final bool isBottomEnabled;
  final bool isRightEnabled;
  final bool isLeftEnabled;

  const SafeAreaWrapper({
    super.key,
    required this.child,
    this.isTopEnabled = true,
    this.isBottomEnabled = false,
    this.isRightEnabled = false,
    this.isLeftEnabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3D0246),
            Color(0xFF9605AC),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: SafeArea(
        top: isTopEnabled,
        bottom: isBottomEnabled,
        left: isLeftEnabled,
        right: isRightEnabled,
        child: child,
      ),
    );
  }
}
