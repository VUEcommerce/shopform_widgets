import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

enum SFCheckButtonState { checked, unchecked, halfChecked }

class SFCheckButton extends StatelessWidget {
  final VoidCallback? onTap;
  SFCheckButtonState? checkButtonState;
  final String? tag;
  final double paddingWidth;
  final double paddingHeight;
  final double iconSize;
  final bool isChecked;
  final Color? backgroundColor;
  final Border? border;

  SFCheckButton({
    this.paddingWidth = 18,
    this.paddingHeight = 18,
    this.onTap,
    this.tag,
    this.iconSize = 20,
    this.checkButtonState,
    this.isChecked = false,
    this.backgroundColor,
    this.border,
  }) {
    if (checkButtonState == null) {
      if (isChecked) {
        checkButtonState = SFCheckButtonState.checked;
      } else {
        checkButtonState = SFCheckButtonState.unchecked;
      }
    }
  }

  bool get _isCheckedOrHalfChecked =>
      checkButtonState == SFCheckButtonState.checked ||
      checkButtonState == SFCheckButtonState.halfChecked;

  bool get _isHalfChecked => checkButtonState == SFCheckButtonState.halfChecked;

  bool get _isChecked => checkButtonState == SFCheckButtonState.checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize + paddingWidth,
      height: iconSize + paddingHeight,
      child: Material(
        color: backgroundColor ?? SFAppColor.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            color: SFAppColor.transparent,
            alignment: Alignment.center,
            child: Container(
              width: iconSize,
              height: iconSize,
              decoration: BoxDecoration(
                color: _isCheckedOrHalfChecked
                    ? SFAppColor.tulipTreeGold
                    : SFAppColor.transparent,
                borderRadius: BorderRadius.circular(2),
                border: _getBorder(),
              ),
              child: _isHalfChecked
                  ? Icon(
                      Icons.remove,
                      key: Key('check_box_half_checked_$tag'),
                      size: iconSize,
                      color: SFAppColor.white,
                    )
                  : _isChecked
                      ? Icon(
                          Icons.check,
                          key: Key('check_box_checked_$tag'),
                          size: iconSize,
                          color: SFAppColor.white,
                        )
                      : Container(),
            ),
          ),
        ),
      ),
    );
  }

  Border? _getBorder() {
    if (_isCheckedOrHalfChecked) {
      return null;
    }
    return border ??
        Border.all(
          color: SFAppColor.tulipTreeGold,
          width: 1,
        );
  }
}
