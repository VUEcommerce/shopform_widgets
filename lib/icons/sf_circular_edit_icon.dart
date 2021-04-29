import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';

class SFCircularEditIcon extends StatelessWidget {
  final double height;
  final double width;

  const SFCircularEditIcon({
    this.height = 22,
    this.width = 22,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconCircularEdit,
      semanticsLabel: iconCircularEditSemantics,
      height: height,
      width: width,
    );
  }
}
