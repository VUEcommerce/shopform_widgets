import 'package:flutter/material.dart';
import 'package:shopform_widgets/icons/sf_filter_icon.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';
import 'package:shopform_widgets/constants/sf_content_spacer_constants.dart';

class SFButtonFilter extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double height;

  const SFButtonFilter({
    Key key,
    @required this.onTap,
    @required this.label,
    this.height,
  })  : assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(
          color: Theme.of(context).focusColor,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: BoxConstraints(minWidth: 50),
          height: height ?? 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: <Widget>[
                Text(
                  label,
                  style: SFAppTextStyle.of(
                    context,
                    fontSize: 12.0,
                    letterSpacing: -0.24,
                  ),
                ),
                SFContentSpacerConstants.horizontalFour,
                SFFilterIcon(
                  height: 12.0,
                  width: 12.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
