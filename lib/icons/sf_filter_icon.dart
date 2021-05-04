import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';

class SFFilterIcon extends StatelessWidget {
  final double height;
  final double width;

  const SFFilterIcon({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconFilter,
      semanticsLabel: iconFilterSemantics,
      height: height ?? 20.0,
      width: width ?? 20.0,
    );
  }
}
