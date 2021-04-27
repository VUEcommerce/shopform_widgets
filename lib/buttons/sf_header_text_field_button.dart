import 'package:flutter/material.dart';
import 'package:shopform_widgets/stokes/sf_horizontal_error_line.dart';
import 'package:shopform_widgets/stokes/sf_horizontal_line.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFHeaderTextFieldButton extends StatelessWidget {
  final String header;
  final String content;
  final String hint;
  final String errorMessage;
  final bool showError;
  final VoidCallback onTap;

  SFHeaderTextFieldButton({
    this.header,
    this.content,
    this.hint,
    this.errorMessage,
    this.showError = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (header != null)
          Text(
            header,
            style: SFAppTextStyle.of(
              context,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: SFAppColor.black,
            ),
          ),
        Container(
          height: 39,
          child: InkWell(
            onTap: () {
              onTap?.call();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(width: 4),
                Expanded(child: buildContent(context)),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: showError ? SFAppColor.red : SFAppColor.greyDark,
                ),
              ],
            ),
          ),
        ),
        showError ? SFHorizontalErrorLine() : SFHorizontalLine(),
        if (showError) ...[
          const SizedBox(height: 4),
          Text(
            errorMessage,
            style: SFAppTextStyle.of(
              context,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: SFAppColor.red,
            ),
          )
        ],
      ],
    );
  }

  Widget buildContent(BuildContext context) {
    if (content == null) {
      return Text(
        hint ?? '',
        style: SFAppTextStyle.of(
          context,
          fontSize: 12,
          color: SFAppColor.greyDark,
          fontWeight: FontWeight.w400,
        ),
      );
    }
    return Text(
      content,
      style: SFAppTextStyle.of(
        context,
        fontSize: 12,
        color: SFAppColor.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
