import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/assets/assets.gen.dart';

enum SnackbarType {
  SUCCESS,
  ERROR,
  WARNING,
  INFO;

  String get iconPath => switch (this) {
    SUCCESS => Assets.icons.success.path,
    ERROR => Assets.icons.error.path,
    WARNING => Assets.icons.warning.path,
    INFO => Assets.icons.info.path,
  };

  Color get color => switch (this) {
    SUCCESS => Colors.green,
    ERROR => Colors.red,
    WARNING => Colors.yellow,
    INFO => Colors.blue,
  };
}
