import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageViewerScreen extends HookWidget {
  const ImageViewerScreen(this.images, {super.key, this.initialImage = 0});

  final List<dynamic> images;
  final int initialImage;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(initialImage);

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, currentIndex.value);
        return false;
      },
      child: Stack(
        children: [
          PhotoViewGallery.builder(
            pageController: PageController(initialPage: initialImage),
            itemCount: images.length,
            onPageChanged: (value) {
              currentIndex.value = value;
            },
            builder: (context, index) {
              final image = images[index];
              return PhotoViewGalleryPageOptions(
                imageProvider: image is File
                    ? FileImage(image)
                    : CachedNetworkImageProvider(images[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained,
              );
            },
            scrollPhysics: const BouncingScrollPhysics(),
          ),
          SafeArea(
            child: Container(
              height: kToolbarHeight,
              width: double.infinity,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 2, top: 3),
              child: BackButton(
                style: ButtonStyle(
                  iconColor: WidgetStateProperty.all(Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
