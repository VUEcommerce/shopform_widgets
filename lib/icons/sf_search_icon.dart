import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';

class SFSearchIcon extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const SFSearchIcon({
    this.height = 24.0,
    this.width = 24.0,
    this.color = SFAppColor.black,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconSearch,
      semanticsLabel: iconSearchSemantics,
      height: height,
      width: width,
      color: color,
    );
  }
}
