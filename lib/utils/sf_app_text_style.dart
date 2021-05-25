import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';

class SFAppTextStyle {
  static TextStyle? of(
    BuildContext context, {
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? fontSize,
    Color? backgroundColor,
    double? letterSpacing = -0.24,
  }) {
    return Theme.of(context).textTheme.bodyText2?.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: color,
          backgroundColor: backgroundColor,
          letterSpacing: letterSpacing,
        );
  }
}
