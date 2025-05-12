import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  static final ImagePicker _picker = ImagePicker();
  static Future<File?> pickAndCropImage({
    required ImageSource source,
    ImageCompressFormat compressFormat = ImageCompressFormat.jpg,
  }) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile == null) return null;

    final File originalFile = File(pickedFile.path);
    return await _cropImage(
      originalFile,
      compressFormat: compressFormat,
    );
  }

  static Future<File?> _cropImage(
    File imageFile, {
    required ImageCompressFormat compressFormat,
  }) async {
    final CroppedFile? croppedImage = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      uiSettings: [
        AndroidUiSettings(toolbarTitle: 'Edit Image', lockAspectRatio: false),
        IOSUiSettings(title: 'Edit Image'),
      ],
      compressFormat: compressFormat,
    );

    return croppedImage != null ? File(croppedImage.path) : null;
  }

  static Future<List<File>?> pickMultipleImages({
    ImageCompressFormat compressFormat = ImageCompressFormat.jpg,
  }) async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles.isEmpty) return null;
    if (pickedFiles.length == 1) {
      final File? croppedFile = await _cropImage(
        File(pickedFiles[0].path),
        compressFormat: compressFormat,
      );
      return croppedFile != null ? [croppedFile] : null;
    }

    return pickedFiles.map((file) => File(file.path)).toList();
  }
}
