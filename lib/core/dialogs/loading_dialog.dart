import 'package:chelnok_mob/ui/widgets/loading.dart';
import 'package:flutter/material.dart';

Future<T?> showLoadingDialog<T>({
  required BuildContext context,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Loading();
    },
  );
}
