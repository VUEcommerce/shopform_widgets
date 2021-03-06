import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFAppText extends StatelessWidget {
  SFAppText._(
      this.data, this.style, this.textAlign, this.textOverflow, this.maxLines);

  factory SFAppText.gainsboroGray12Normal({double height, @required String text}) {
    return SFAppText(
      text,
      style: TextStyle(
          height: height,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: SFAppColor.gainsboroGray),
    );
  }

  factory SFAppText.dimGrey14Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 14,
        ),
      );

  factory SFAppText.dimGrey16Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 16,
        ),
      );

  factory SFAppText.dimGrey14Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 14,
        ),
      );

  factory SFAppText.dimGrey16Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 16,
        ),
      );

  factory SFAppText.black16Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.greyDark16Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 16,
        ),
      );

  factory SFAppText.black24Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 24,
        ),
      );

  factory SFAppText.black16Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      );

  factory SFAppText.black18Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ).merge(style),
      );

  factory SFAppText.black20Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      );

  factory SFAppText.lightOrange16Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.accentColor,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.lightOrange18Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.accentColor,
          fontSize: 18,
        ),
      );

  factory SFAppText.lightOrange12Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.accentColor,
          fontSize: 12,
        ),
      );

  factory SFAppText.lightOrange36Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.accentColor,
          fontSize: 36,
        ),
      );

  factory SFAppText.greyDark14Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 14,
        ),
      );

  factory SFAppText.greyDark12Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 12,
        ),
      );

  factory SFAppText.greyDark12NormalItalic({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          color: SFAppColor.greyDark,
          fontSize: 12,
        ),
      );

  factory SFAppText.dimGrey12Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 12,
        ),
      );

  factory SFAppText.dimGrey11Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 11,
        ),
      );

  factory SFAppText.dimGrey10Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 10,
        ),
      );

  factory SFAppText.dimGrey12Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 12,
        ),
      );

  factory SFAppText.grey14Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.grey,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.grey10Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.grey,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.grey12Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.grey,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.grey16Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.grey,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.grey18Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.grey,
          fontSize: 18,
        ).merge(style),
      );

  factory SFAppText.black14Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.blue14UnderlineNormal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          decoration: TextDecoration.underline,
          fontSize: 14,
        ),
      );

  factory SFAppText.blue16Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          fontSize: 16,
        ),
      );

  factory SFAppText.neonBlue12Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.white16Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 16,
        ),
      );

  factory SFAppText.blue14Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w600,
          color: SFAppColor.neonBlue,
          fontSize: 14,
        ),
      );

  factory SFAppText.white14Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white14Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white12Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 12,
        ),
      );

  factory SFAppText.white36Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 36,
        ).merge(style),
      );

  factory SFAppText.black14Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.lightOrange14Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.accentColor,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.lightOrange14Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.accentColor,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.red14Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.red,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.red11Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w300,
          color: SFAppColor.lightRed,
          fontSize: 11,
        ).merge(style),
      );

  factory SFAppText.red11Italic({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w300,
          color: SFAppColor.lightRed,
          fontSize: 11,
          fontStyle: FontStyle.italic,
        ).merge(style),
      );

  factory SFAppText.red14Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: SFAppColor.red,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.lightOrange16Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.accentColor,
          fontSize: 16,
        ),
      );

  factory SFAppText.black12Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.black10Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.black12Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.black10Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.black32Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 32,
        ),
      );

  factory SFAppText.white12Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 12,
        ),
      );

  factory SFAppText.white13Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 13,
        ).merge(style),
      );

  factory SFAppText.white14SemiBold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white10Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 10,
        ),
      );

  factory SFAppText.white7Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 7,
        ),
      );

  factory SFAppText.white10Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) {
    return SFAppText(
      text,
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        color: Colors.white,
        fontSize: 10,
      ),
    );
  }

  factory SFAppText.white18Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18,
        ),
      );

  factory SFAppText.lightOrange12Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    TextStyle style,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.accentColor,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.lightOrange18Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          color: SFAppColor.accentColor,
          fontSize: 18,
        ),
      );

  factory SFAppText.lightOrange16SemiBold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.w600,
          color: SFAppColor.accentColor,
          fontSize: 16,
        ),
      );

  factory SFAppText.lightOrange10italic({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    TextStyle style,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          color: SFAppColor.accentColor,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.lightOrange14italic({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontStyle: FontStyle.italic,
          color: SFAppColor.accentColor,
          fontSize: 14,
        ),
      );

  factory SFAppText.dimGrey12italic({
    double height,
    @required String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) {
    return SFAppText(
      text,
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.dimGrey,
        fontSize: 12,
      ),
    );
  }

  factory SFAppText.black12italic({
    double height,
    @required String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) {
    return SFAppText(
      text,
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.black,
        fontSize: 12,
      ),
    );
  }

  factory SFAppText.black14italic({
    double height,
    @required String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) {
    return SFAppText(
      text,
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.black,
        fontSize: 14,
      ),
    );
  }

  factory SFAppText.red12({double height, @required String text, TextStyle style}) {
    return SFAppText(
      text,
      style: TextStyle(
        height: height,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: SFAppColor.red,
        fontSize: 12,
      ).merge(style),
    );
  }

  factory SFAppText.white24Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 24,
        ),
      );

  factory SFAppText.white24Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ).merge(style),
      );

  factory SFAppText.white22Bold({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 22,
        ),
      );

  factory SFAppText.white45Bold({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
        ).merge(style),
      );

  factory SFAppText.islamicGreen14Normal({
    double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
  }) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          color: SFAppColor.islamicGreen,
          fontSize: 14,
        ),
      );

  factory SFAppText.green12Normal({double height,
    String text,
    TextAlign textAlign,
    TextOverflow textOverflow,
    int maxLines,
    TextStyle style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          height: height,
          fontWeight: FontWeight.normal,
          color: SFAppColor.green,
          fontSize: 12,
        ).merge(style),
      );

  final String data;
  final TextStyle style;
  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int maxLines;

  const SFAppText(this.data, {
    @required this.style,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: SFAppTextStyle.of(context).merge(style),
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
