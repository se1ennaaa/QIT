import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExpandableTextWidget extends HookWidget {
  const ExpandableTextWidget(
    this.text, {
    super.key,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    return ExpandableText(
      isExpanded.value ? text : text.replaceAll('\r', ''),
      expandText: 'Читать полностью',
      collapseText: 'Скрыть',
      onExpandedChanged: (val) {
        isExpanded.value = val;
      },
      style: style,
      maxLines: 6,
      linkColor: Theme.of(context).primaryColor,
    );
    ;
  }
}
