import 'package:flutter/material.dart';
import 'package:shopform_widgets/icons/sf_search_icon.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFSearchField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final ValueChanged<String> onSubmitted;
  final VoidCallback onCancel;
  final VoidCallback onTap;
  final EdgeInsets margin;
  final String hint;
  final Color cancelColor;
  final Widget suffixIcon;
  final bool autoFocus;
  final bool enable;
  final ValueChanged<bool> onFocusChanged;
  final bool alwaysHideCancel;
  final bool permanentCancelButton;
  final String cancelText;

  SFSearchField({
    this.focusNode,
    this.controller,
    this.onSubmitted,
    this.onCancel,
    this.onTap,
    this.margin,
    this.hint,
    this.cancelColor,
    this.suffixIcon,
    this.onFocusChanged,
    this.autoFocus = false,
    this.enable = true,
    this.alwaysHideCancel = false,
    this.permanentCancelButton = false,
    @required this.cancelText,
  });

  @override
  _SFSearchFieldState createState() => _SFSearchFieldState();
}

class _SFSearchFieldState extends State<SFSearchField>
    with SingleTickerProviderStateMixin {
  FocusNode _internalFocus;
  TextEditingController _internalTfController;
  AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _internalTfController = widget.controller ?? TextEditingController();
    _internalFocus = widget.focusNode ?? FocusNode();
    _internalFocus.addListener(() {
      setState(() {});
      widget.onFocusChanged?.call(_internalFocus.hasFocus);
      if (_internalFocus.hasFocus) {
        _animController.forward();
      } else {
        if (!_internalTfController.text.isNotEmpty) {
          _animController.reverse();
        }
      }
    });

    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _internalFocus.dispose();
    }
    if (_internalTfController == null) {
      _internalTfController.dispose();
    }
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.zero,
      child: Row(children: <Widget>[
        Expanded(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              TextField(
                onTap: widget.onTap,
                autofocus: widget.autoFocus,
                controller: _internalTfController,
                textAlign: TextAlign.start,
                enabled: widget.enable,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: SFAppColor.whisperGray,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  disabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: SFAppColor.whisperGray,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 8),
                    child: SFSearchIcon(
                      width: 20,
                      height: 20,
                      color: SFAppColor.greyDark,
                    ),
                  ),
                  prefixIconConstraints: BoxConstraints(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: SFAppColor.whisperGray,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  errorBorder: InputBorder.none,
                  hintText: widget.hint ?? '',
                  hintStyle: SFAppTextStyle.of(
                    context,
                    color: SFAppColor.greyDark,
                  ),
                ),
                focusNode: _internalFocus,
                maxLines: 1,
                minLines: 1,
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {
                  widget.onSubmitted?.call(value);
                },
              ),
            ],
          ),
        ),
        widget.alwaysHideCancel ? Container() : buildCancelButtonBaseOnTextFieldState(),
      ]),
    );
  }

  Widget buildCancelButtonBaseOnTextFieldState() {
    if (widget.permanentCancelButton) {
      return buildCancelButton(context);
    }
    return Container(
      alignment: Alignment.centerLeft,
      child: AnimatedBuilder(
        animation: _animController,
        builder: (context, child) {
          return SizedBox(
            width: widget.suffixIcon != null
                ? 40 + 16 * _animController.value
                : 56 * _animController.value,
            height: 40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (_animController.isCompleted)
                  buildCancelButton(context),
                if (_animController.isDismissed)
                  widget.suffixIcon != null
                      ? SizedBox(
                    width: 40,
                    height: 40 * (1 - _animController.value),
                    child: Center(
                      child: widget.suffixIcon,
                    ),
                  )
                      : Container()
              ],
            ),
          );
        },
      ),
    );
  }

  Padding buildCancelButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: GestureDetector(
        onTap: () {
          if (!_internalFocus.hasFocus &&
              _internalTfController.text.isNotEmpty) {
            setState(() {
              _internalTfController.clear();
            });
            _animController.reverse();
          } else {
            _internalTfController.clear();
            _internalFocus.unfocus();
          }
          widget.onCancel?.call();
        },
        child: Text(
          widget.cancelText,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
          style: SFAppTextStyle.of(context,
              color: widget.cancelColor ?? Colors.black),
        ),
      ),
    );
  }
}
