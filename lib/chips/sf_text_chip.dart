import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFTextChip extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color textColor;
  final bool enable;

  const SFTextChip(
      {Key key,
      this.text,
      this.padding,
      this.backgroundColor,
      this.textColor,
      this.enable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: !enable
              ? SFAppColor.whiteSmoke
              : (backgroundColor ?? SFAppColor.tulipTreeGold),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: padding ?? const EdgeInsets.all(2),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              color: enable ? textColor : SFAppColor.grey,
              height: 1.375),
        ),
      ),
    );
  }
}
