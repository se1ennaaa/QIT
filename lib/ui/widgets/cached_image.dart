import 'package:cached_network_image/cached_network_image.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
    this.image, {
    super.key,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
  });

  final String image;
  final BoxFit fit;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: fit,
      height: height,
      width: width,
      placeholder: (context, url) => Center(
        child: CupertinoActivityIndicator(),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
