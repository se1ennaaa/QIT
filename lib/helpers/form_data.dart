import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:dio/dio.dart';

Future<List<MultipartFile>> convertToMultipartFiles(List<File> files) async {
  List<MultipartFile> multipartFiles = [];
  for (var file in files) {
    multipartFiles.add(await MultipartFile.fromFile(
      file.path,
      filename: basename(file.path),
    ));
  }

  return multipartFiles;
}
