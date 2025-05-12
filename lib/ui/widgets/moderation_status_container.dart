import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:flutter/material.dart';

class ModerationStatusContainer extends StatelessWidget {
  const ModerationStatusContainer(
    this.status, {
    super.key,
  });

  final ModerationStatus status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: getColorStatus(),
        ),
        alignment: Alignment.center,
        child: Text(
          getTextStatus(),
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String getTextStatus() {
    switch (status) {
      case ModerationStatus.pending:
        return 'В ожидании';
      case ModerationStatus.approved:
        return 'Принято';
      case ModerationStatus.rejected:
        return 'Отклонено';
    }
  }

  Color getColorStatus() {
    switch (status) {
      case ModerationStatus.pending:
        return Color(0xFFFFB800);
      case ModerationStatus.approved:
        return Color(0xFF068A66);
      case ModerationStatus.rejected:
        return Color(0xFFFF0000);
    }
  }
}
