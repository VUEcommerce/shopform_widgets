import 'package:flutter/material.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFOutlineButton extends StatelessWidget {
  final double height;
  final String text;
  final double horizontalPadding;
  final BorderRadius borderRadius;
  final VoidCallback onTap;
  final bool isExpanded;

  SFOutlineButton({
    this.height = 46,
    required this.text,
    this.horizontalPadding = 8,
    required this.onTap,
    this.isExpanded = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });

  @override
  Widget build(BuildContext context) {
    return isExpanded ? buildContent() : IntrinsicWidth(child: buildContent());
  }

  Widget buildContent() {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(
          color: SFAppColor.black,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          alignment: Alignment.center,
          child: SFAppText.black14Bold(
            text: text,
          ),
        ),
      ),
    );
  }
}
