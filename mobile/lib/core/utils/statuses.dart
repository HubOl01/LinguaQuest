import 'package:flutter/material.dart';

String status(int isStatus) {
  switch (isStatus) {
    case 1:
      return "Опубликован";
    case 2:
      return "Отклонен";
    default:
      return "На модерации";
  }
}

Color statusColor(int isStatus) {
  switch (isStatus) {
    case 1:
      return Colors.green;
    case 2:
      return Colors.red;
    default:
      return Colors.orange;
  }
}

// Published - Опубликован
// Rejected - Отклонен
// On moderation - На модерации