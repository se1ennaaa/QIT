import 'package:chelnok_mob/ui/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

void showSnackbar({
  required BuildContext context,
  required String message,
  Color? backgroundColor,
  bool notAuthorized = false,
}) {
  final foregroundColor = Color(0xff222222);

  final snackBar = SnackBar(
    showCloseIcon: true,
    content: notAuthorized
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(241, 0, 0, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Авторизация',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ],
          )
        : Text(
            message,
            style: TextStyle(
              fontSize: 14,
              letterSpacing: -.5,
              fontWeight: FontWeight.w400,
              color: foregroundColor,
            ),
          ),
    duration: const Duration(seconds: 5),
    closeIconColor: foregroundColor,
    backgroundColor: backgroundColor ?? Colors.amber,
  );

  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(snackBar);
}
