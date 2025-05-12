import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FocusValidationField extends HookConsumerWidget {
  final TextEditingController? controller;

  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final TextCapitalization? textCapitalization;
  final Function(bool)? onChangedFocus;
  final bool readOnly;
  final AutovalidateMode? autoValidateMode;
  final Function()? onTap;
  final String? Function(String? value)? validator;
  final InputDecoration? decoration;
  final String? hintText;
  final bool obscureText;

  const FocusValidationField({
    super.key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.textCapitalization,
    this.onChangedFocus,
    this.readOnly = false,
    this.onTap,
    this.autoValidateMode,
    this.hintText,
    this.obscureText = false,
    this.decoration,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = useFocusNode();
    final hasText = useState(controller?.text.isNotEmpty == true);

    useEffect(() {
      listener() {
        onChangedFocus?.call(focusNode.hasFocus);
        hasText.value = controller?.text.isNotEmpty == true;
      }

      focusNode.addListener(listener);

      return () => focusNode.removeListener(listener);
    }, []);

    return TextFormField(
      autovalidateMode: autoValidateMode,
      onTap: onTap,
      readOnly: readOnly,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      onChanged: (value) {
        onChanged?.call(value);
        hasText.value = value.isNotEmpty;
      },
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: '*',
      keyboardType: keyboardType,
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
          ),
    );
  }
}

AutovalidateMode getAutoValidateMode(bool isValidate) {
  if (isValidate) {
    return AutovalidateMode.always;
  }
  return AutovalidateMode.disabled;
}
