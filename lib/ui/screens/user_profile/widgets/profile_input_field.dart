import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final bool hideBorder;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;

  const ProfileInputField({
    super.key,
    required this.label,
    required this.controller,
    this.onChanged,
    this.readOnly = false,
    this.hideBorder = false,
    this.keyboardType,
    this.inputFormatters,
    this.validator,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 36,
          child: TextFormField(
            onTap: onTap,
            validator: validator,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            controller: controller,
            onChanged: onChanged,
            readOnly: readOnly,
            decoration: InputDecoration(
              isDense: true,
              fillColor: const Color(0xFFF6EFF7),
              filled: true,
              contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
              border: hideBorder
                  ? InputBorder.none
                  : const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE8CCEC), width: 1),
                    ),
              enabledBorder: hideBorder
                  ? InputBorder.none
                  : const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE8CCEC), width: 1),
                    ),
              focusedBorder: hideBorder
                  ? InputBorder.none
                  : const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE8CCEC), width: 1),
                    ),
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
            ),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
