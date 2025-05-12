import 'package:flutter/material.dart';

class ContinueElevatedButton extends StatelessWidget {
  const ContinueElevatedButton(
    this.onPressed, {
    super.key,
    this.isLoading = false,
  });

  final Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF9605AC),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: !isLoading
            ? Text('Продолжить')
            : SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white,
                ),
              ),
      ),
    );
  }
}
