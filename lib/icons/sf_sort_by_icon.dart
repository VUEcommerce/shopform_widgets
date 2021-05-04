import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';

class SFSortByIcon extends StatelessWidget {
  final double height;
  final double width;

  const SFSortByIcon({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconSortBy,
      semanticsLabel: iconSortBySemantics,
      height: height ?? 20.0,
      width: width ?? 20.0,
    );
  }
}
