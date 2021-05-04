import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFButtonSolidCircular extends StatelessWidget {
  final Color color;
  final Widget icon;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;

  const SFButtonSolidCircular({
    Key key,
    this.color,
    @required this.icon,
    this.text,
    this.onTap,
    this.width = 24.0,
    this.height = 24.0,
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
      color: SFAppColor.noble,
      icon: icon,
      text: text,
      width: width,
      height: height,
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
          child: SFAppText.black14Normal(
            textAlign: TextAlign.center,
            text: text,
            maxLines: 2,
          ),
        ),
      ]);
    }
    return Column(
      children: _children,
    );
  }
}
