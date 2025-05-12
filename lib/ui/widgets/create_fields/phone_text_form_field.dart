import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneTextFormField extends StatefulWidget {
  const PhoneTextFormField({
    super.key,
    this.labelText,
    this.onChanged,
    this.isWhatsAppPhoneField = false,
    this.validator,
    this.controller,
  });

  final String? labelText;
  final Function(String)? onChanged;
  final bool isWhatsAppPhoneField;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  _PhoneTextFormFieldState createState() => _PhoneTextFormFieldState();
}

class _PhoneTextFormFieldState extends State<PhoneTextFormField> {
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
        maskFormatter.updateMask(mask: '+# ### ### ## ##');
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
    return TextFormField(
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
        labelText: widget.labelText,
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

final phoneFormatter = MaskTextInputFormatter(
  mask: '+##################',
  filter: {"#": RegExp(r'[0-9]')},
);
