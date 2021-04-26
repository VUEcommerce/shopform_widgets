import 'package:flutter/material.dart';
import 'package:shopform_widgets/ultils/sf_app_color.dart';
import 'package:shopform_widgets/ultils/sf_app_text_style.dart';

class SFErrorText extends StatelessWidget {
  final String text;

  SFErrorText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: SFAppTextStyle.of(
        context,
        color: SFAppColor.red,
        fontSize: 12,
      ),
    );
  }
}
