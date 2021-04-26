import 'package:flutter/material.dart';
import 'package:shopform_widgets/ultils/sf_app_color.dart';

class SFTextButton extends StatelessWidget {
  final bool enable;
  final VoidCallback onTap;
  final String text;
  final TextStyle style;
  final double horizontalPadding;
  final double height;
  final bool isHorizontalExpanded;

  SFTextButton({
    this.enable = true,
    @required this.onTap,
    @required this.text,
    @required this.style,
    this.horizontalPadding = 4,
    this.height,
    this.isHorizontalExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return isHorizontalExpanded
        ? buildContent(context)
        : IntrinsicWidth(child: buildContent(context));
  }

  Material buildContent(BuildContext context) {
    return Material(
      color: SFAppColor.transparent,
      child: InkWell(
        onTap: enable ? onTap : null,
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          alignment: Alignment.center,
          child: Text(
            text,
            style: style.copyWith(
              color: enable ? style.color : SFAppColor.greyDark,
            ),
          ),
        ),
      ),
    );
  }
}
