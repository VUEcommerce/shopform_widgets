import 'package:flutter/material.dart';

class SFCardView extends StatelessWidget {
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  final Color? shadowColor;
  final defaultRadius = 4.0;

  SFCardView({
    this.padding,
    required this.child,
    this.backgroundColor,
    this.borderRadius,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                color: shadowColor ?? Colors.black.withOpacity(0.25))
          ]),
      child: ClipRRect(
        child: child ?? SizedBox(),
        clipBehavior: Clip.antiAlias,
        borderRadius: borderRadius ?? BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
