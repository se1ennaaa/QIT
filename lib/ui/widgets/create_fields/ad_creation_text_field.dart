import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdCreationTextField extends StatelessWidget {
  const AdCreationTextField({
    super.key,
    this.labelText,
    this.onChanged,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.validator,
    this.inputFormatters,
    this.controller,
  });

  final String? labelText;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        fillColor: Colors.white,
        filled: true,
        labelStyle: TextStyle(
          color: Color(0xFF6E6E6E),
          fontSize: 16,
        ),
      ),
    );
  }
}
