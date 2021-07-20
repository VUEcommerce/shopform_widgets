import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFElevatedButton extends StatelessWidget {
  final double height;
  final String text;
  final TextStyle style;
  final double horizontalPadding;
  final BorderRadius borderRadius;
  final VoidCallback onTap;
  final bool isExpanded;
  final Color backgroundColor;
  final Color strokeColor;

  SFElevatedButton({
    this.height = 46,
    @required this.text,
    @required this.style,
    this.horizontalPadding = 8,
    @required this.onTap,
    this.isExpanded = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(6)),
    this.backgroundColor = SFAppColor.lightOrange,
    this.strokeColor,
  });

  @override
  Widget build(BuildContext context) {
    return isExpanded ? buildContent() : IntrinsicWidth(child: buildContent());
  }

  bool get isStroke => strokeColor != null;

  Widget buildContent() {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          decoration: BoxDecoration(
            border: isStroke ? Border.all(color: strokeColor) : null,
            borderRadius: borderRadius,
            color: backgroundColor,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
