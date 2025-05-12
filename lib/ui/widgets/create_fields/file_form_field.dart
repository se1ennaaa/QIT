import 'dart:io';

import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/ui/screens/image_viewer/image_viewer_screen.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/pick_image_sheet.dart';
import 'package:flutter/material.dart';

class ImageFileFormField extends StatelessWidget {
  const ImageFileFormField({
    super.key,
    this.images,
    this.onImagesSelected,
    this.onRemoveImage,
    this.isRequired = false,
    this.maxImages = 20,
  });

  final List<dynamic>? images;
  final Function(List<File>)? onImagesSelected;
  final Function(int index)? onRemoveImage;
  final bool isRequired;
  final int maxImages;

  @override
  Widget build(BuildContext context) {
    final double spacing = 8;
    final double imageSize =
        MediaQuery.of(context).size.width / 4 - spacing * 2;

    if (images?.isNotEmpty ?? false) {
      return Wrap(
        alignment: WrapAlignment.start,
        spacing: spacing,
        runSpacing: spacing,
        children: [
          ...images!.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final image = entry.value;
              return GestureDetector(
                onLongPress: () {
                  _showDeleteConfirmation(context, index);
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageViewerScreen(
                        images!,
                        initialImage: index,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: imageSize,
                  height: imageSize,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: image is File
                        ? Image.file(
                            image,
                            fit: BoxFit.cover,
                          )
                        : CachedImage(
                            image as String,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              );
            },
          ),
          if (images!.length < maxImages)
            SizedBox(
              width: imageSize,
              height: imageSize,
              child: TextButton(
                onPressed: () async {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => PickImageSheet(
                      (selectedImages) {
                        if (selectedImages.isNotEmpty) {
                          final totalImages =
                              images!.length + selectedImages.length;
                          if (totalImages > maxImages) {
                            final allowed = maxImages - images!.length;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Можно добавить не более $allowed изображений',
                                ),
                              ),
                            );
                          } else {
                            onImagesSelected?.call(selectedImages);
                          }
                        }
                      },
                      isMultiple: true,
                    ),
                  );
                },
                child: Text(
                  'Добавить ещё',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      );
    }
    return FormField(
      validator: (value) {
        if (images?.isEmpty ?? true && isRequired) {
          return 'Поле обязательно для заполнения';
        }
        return null;
      },
      builder: (form) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                if ((images?.length ?? 0) < maxImages) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => PickImageSheet(
                      (selectedImages) {
                        if (selectedImages.isNotEmpty) {
                          final totalImages =
                              images!.length + selectedImages.length;
                          if (totalImages > maxImages) {
                            final allowed = maxImages - images!.length;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Можно добавить не более $allowed изображений',
                                ),
                              ),
                            );
                          } else {
                            onImagesSelected?.call(selectedImages);
                          }
                        }
                      },
                      isMultiple: true,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Максимум $maxImages изображений'),
                    ),
                  );
                }
              },
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFD59BDE),
                  ),
                ),
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Выберите фотографию',
                  style: TextStyle(
                    color: Color(0xFF6E6E6E),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            if (form.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 15),
                child: Text(
                  form.errorText ?? '',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Удалить изображение?'),
        content: Text('Вы уверены, что хотите удалить это изображение?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Отмена'),
          ),
          TextButton(
            onPressed: () {
              _deleteImage(index);
              Navigator.pop(context);
            },
            child: Text('Удалить'),
          ),
        ],
      ),
    );
  }

  void _deleteImage(int index) {
    onRemoveImage?.call(index);
  }
}
