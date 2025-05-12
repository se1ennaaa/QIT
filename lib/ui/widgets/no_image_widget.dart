import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NoImage extends StatelessWidget {
  const NoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedImage(
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
          'https://fitowatt.ru/assets/static/noimage.jpg',
        ),
        Gap(9),
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
