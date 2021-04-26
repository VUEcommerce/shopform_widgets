import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopform_widgets/constants/icon_name_constants.dart';

class SFCircularDeleteIcon extends StatelessWidget {
  final double height;
  final double width;

  const SFCircularDeleteIcon({
    this.height = 22,
    this.width = 22,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconCircularDelete,
      semanticsLabel: iconCircularDeleteSemantics,
      height: height,
      width: width,
    );
  }
}
