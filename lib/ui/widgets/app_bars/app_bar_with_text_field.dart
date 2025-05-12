import 'dart:async';

import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/ui/screens/notifications/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AppBarWithTextField extends StatefulWidget {
  const AppBarWithTextField({
    super.key,
    this.svgIconPath,
    this.onChanged,
  });

  final String? svgIconPath;
  final Function(String)? onChanged;

  @override
  State<AppBarWithTextField> createState() => _AppBarWithTextFieldState();
}

class _AppBarWithTextFieldState extends State<AppBarWithTextField> {
  Timer? _debounce;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 1000), () {
      widget.onChanged?.call(query);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          Gap(23),
          Expanded(
            child: SizedBox(
              height: 31,
              child: TextFormField(
                // controller: _controller,
                onChanged: _onSearchChanged,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Поиск',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      top: 5.5,
                      bottom: 5.5,
                      left: 5,
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/search.svg',
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          if (widget.svgIconPath != null) ...[
            Gap(10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  SlideRoute(
                    screen: NotificationsScreen(),
                    slideTo: SlideTo.top,
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10.5,
                  horizontal: 11.5,
                ),
                child: SvgPicture.asset(widget.svgIconPath!),
              ),
            ),
          ],
          Gap(23),
        ],
      ),
    );
  }
}
