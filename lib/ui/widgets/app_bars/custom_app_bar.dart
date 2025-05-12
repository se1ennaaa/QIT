import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onHeartTap,
    this.onLogoutTap,
    this.isFavorite = false,
    this.titleIsCenter = true,
  });

  final String? title;
  final bool titleIsCenter;
  final bool isFavorite;
  final Function()? onHeartTap;
  final Function()? onLogoutTap;

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.pop(context);
            },
            child: SizedBox(
              width: 89,
              height: 53,
              child: Row(
                children: [
                  Gap(10),
                  SvgPicture.asset('assets/svg/arrow_back.svg'),
                  Text(
                    'Назад',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (title != null) ...[
            Text(
              title!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
          if (onHeartTap != null)
            GestureDetector(
              onTap: onHeartTap,
              child: Container(
                width: 89,
                height: 53,
                padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                child: SvgPicture.asset(
                  'assets/svg/${isFavorite ? 'favorite_painted' : 'favorite'}.svg',
                  color: Colors.white,
                ),
              ),
            )
          else if (onLogoutTap != null)
            GestureDetector(
              onTap: onLogoutTap,
              child: Container(
                width: 89,
                height: 53,
                padding: EdgeInsets.all(15),
                child: Text(
                  'Выйти',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE7CDEB),
                  ),
                ),
              ),
            )
          else if (titleIsCenter)
            Gap(89),
        ],
      ),
    );
  }
}
