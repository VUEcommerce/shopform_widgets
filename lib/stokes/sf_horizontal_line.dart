import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFHorizontalLine extends StatelessWidget {
  final double? height;
  final Color? color;

  const SFHorizontalLine({Key? key, this.height, this.color}) : super(key: key);

  factory SFHorizontalLine.height8() {
    return SFHorizontalLine(
      height: 8,
    );
  }

  factory SFHorizontalLine.height2() {
    return SFHorizontalLine(
      height: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1.0,
      color: color ?? SFAppColor.dividerGray,
    );
  }
}
