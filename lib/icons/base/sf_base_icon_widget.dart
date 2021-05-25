import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///because we created too many classes with same structure
///so I created this one
///please extend this [SFBaseIconWidget] class if you wanna create a icon class like this [AccountProfileIcon]
///thank you guys
abstract class SFBaseIconWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String icon;
  final String? semanticLabel;

  const SFBaseIconWidget(
      {this.height,
      this.width,
      this.color,
      required this.icon,
      this.semanticLabel});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      semanticsLabel: semanticLabel ?? icon,
      height: height ?? 24.0,
      width: width ?? 24.0,
      color: color,
    );
  }
}
