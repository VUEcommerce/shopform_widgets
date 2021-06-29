import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFButtonSolidCircular extends StatelessWidget {
  final Color color;
  final Widget icon;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color textColor;

  const SFButtonSolidCircular({
    Key key,
    this.color,
    @required this.icon,
    this.text,
    this.onTap,
    this.width = 24.0,
    this.height = 24.0,
    this.textColor,
  }) : super(key: key);

  factory SFButtonSolidCircular.yellow(
      {@required Widget icon,
      String text,
      Function() onTap,
      double width,
      double height}) {
    return SFButtonSolidCircular(
      color: SFAppColor.tulipTreeGold,
      icon: icon,
      text: text,
      onTap: onTap,
      width: width,
      height: height,
    );
  }

  factory SFButtonSolidCircular.disabled(
      {@required Widget icon, String text, double width, double height}) {
    return SFButtonSolidCircular(
      color: SFAppColor.noble.withOpacity(0.3),
      icon: icon,
      text: text,
      width: width,
      height: height,
      textColor: SFAppColor.noble.withOpacity(0.3),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _children = <Widget>[
      ClipOval(
        child: Material(
          color: color ?? SFAppColor.black,
          child: InkWell(
            child: Container(
              width: width,
              height: height,
              child: Center(
                child: icon,
              ),
            ),
            onTap: onTap != null
                ? () {
                    onTap();
                  }
                : null,
          ),
        ),
      ),
    ];

    if (text != null && text.isNotEmpty) {
      _children.addAll([
        SFContentSpace.vertical8(),
        SizedBox(
          width: 70,
          child: SFAppText(
            text,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: SFAppTextStyle.of(
              context,
              color: textColor ?? SFAppColor.black,
              fontSize: 14,
            ),
          ),
        ),
      ]);
    }
    return Column(
      children: _children,
    );
  }
}
