import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProfilePhoneInputField extends StatefulWidget {
  const ProfilePhoneInputField({
    super.key,
    required this.label,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.validator,
  });
  final String label;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  final TextInputType? keyboardType;

  final String? Function(String?)? validator;

  @override
  _ProfilePhoneInputFieldState createState() => _ProfilePhoneInputFieldState();
}

class _ProfilePhoneInputFieldState extends State<ProfilePhoneInputField> {
  late MaskTextInputFormatter maskFormatter;

  @override
  void initState() {
    super.initState();
    maskFormatter = MaskTextInputFormatter(
      mask: '+#',
      filter: {"#": RegExp(r'[0-9]')},
    );
  }

  void _updateMask(String value) {
    if (value.startsWith('+7')) {
      setState(() {
        maskFormatter.updateMask(mask: '+# ### ## ## ##');
      });
    } else if (value.startsWith('+9')) {
      setState(() {
        maskFormatter.updateMask(mask: '+### ### ### ###');
      });
    } else {
      setState(() {
        maskFormatter.updateMask(mask: '+##################');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 60,
          child: TextFormField(
            controller: widget.controller,
            onChanged: (value) {
              _updateMask(value);
              if (value.isEmpty) {
                maskFormatter.updateMask(
                  mask: '+#',
                );
              }

              widget.onChanged?.call(value);
            },
            validator: widget.validator,
            keyboardType: TextInputType.phone,
            inputFormatters: [maskFormatter],
            decoration: InputDecoration(
              errorMaxLines: 2,
              isDense: true,
              fillColor: const Color(0xFFF6EFF7),
              filled: true,
              contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE8CCEC), width: 1),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE8CCEC), width: 1),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE8CCEC), width: 1),
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
