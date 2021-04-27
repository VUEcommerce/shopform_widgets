import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFHorizontalErrorLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: SFAppColor.red,
    );
  }
}
