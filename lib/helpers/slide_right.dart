import 'package:flutter/material.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget screen;
  final SlideTo slideTo;

  SlideRoute({required this.screen, this.slideTo = SlideTo.right})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              screen,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: slideTo.value,
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          opaque: false,
          barrierDismissible: true,
          maintainState: true,
        );

  @override
  bool get willHandlePopInternally => false;

  @override
  bool get hasScopedWillPopCallback => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.primaryDelta! > 10) {
          Navigator.of(context).pop(); // Поддержка свайпа-назад
        }
      },
      behavior: HitTestBehavior.opaque,
      child: screen,
    );
  }
}

enum SlideTo {
  left,
  right,
  top,
  bottom;

  Offset get value {
    switch (this) {
      case SlideTo.left:
        return const Offset(-1, 0);
      case SlideTo.right:
        return const Offset(1, 0);
      case SlideTo.top:
        return const Offset(0, -1);
      case SlideTo.bottom:
        return const Offset(0, 1);
    }
  }
}
