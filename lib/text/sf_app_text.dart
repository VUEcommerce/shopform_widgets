import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFAppText extends StatelessWidget {
  factory SFAppText.gainsboroGray12Normal({@required String text}) {
    return SFAppText(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: SFAppColor.gainsboroGray),
    );
  }

  factory SFAppText.dimGrey14Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 14,
        ),
      );

  factory SFAppText.dimGrey16Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 16,
        ),
      );

  factory SFAppText.dimGrey14Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 14,
        ),
      );

  factory SFAppText.black16Normal({
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
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.greyDark16Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 16,
        ),
      );

  factory SFAppText.black24Normal({
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
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 24,
        ),
      );

  factory SFAppText.black16Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      );

  factory SFAppText.black18Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ).merge(style),
      );

  factory SFAppText.black20Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      );

  factory SFAppText.gold16Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.gold18Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 18,
        ),
      );

  factory SFAppText.gold12Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 12,
        ),
      );

  factory SFAppText.gold36Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.tulipTreeGold,
          fontSize: 36,
        ),
      );

  factory SFAppText.greyDark14Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 14,
        ),
      );

  factory SFAppText.greyDark12Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.greyDark,
          fontSize: 12,
        ),
      );

  factory SFAppText.greyDark12NormalItalic({
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
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          color: SFAppColor.greyDark,
          fontSize: 12,
        ),
      );

  factory SFAppText.dimGrey12Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 12,
        ),
      );

  factory SFAppText.dimGrey10Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.dimGrey,
          fontSize: 10,
        ),
      );

  factory SFAppText.dimGrey12Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.dimGrey,
          fontSize: 12,
        ),
      );

  factory SFAppText.grey14Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.grey,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.grey10Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.grey,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.grey16Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.grey,
          fontSize: 16,
        ).merge(style),
      );

  factory SFAppText.grey18Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.grey,
          fontSize: 18,
        ).merge(style),
      );

  factory SFAppText.black14Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.blue14UnderlineNormal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          decoration: TextDecoration.underline,
          fontSize: 14,
        ),
      );

  factory SFAppText.blue16Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          fontSize: 16,
        ),
      );

  factory SFAppText.neonBlue12Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.neonBlue,
          fontSize: 12,
        ),
      );

  factory SFAppText.white16Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 16,
        ),
      );

  factory SFAppText.blue14Bold({
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
          fontWeight: FontWeight.w600,
          color: SFAppColor.neonBlue,
          fontSize: 14,
        ),
      );

  factory SFAppText.white14Normal({
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
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white14Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white12Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 12,
        ),
      );

  factory SFAppText.white36Bold({
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
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 36,
        ).merge(style),
      );

  factory SFAppText.black14Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.gold14Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.gold14Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.tulipTreeGold,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.red14Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.red,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.red11Normal(
          {String text,
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
          fontWeight: FontWeight.w300,
          color: SFAppColor.lightRed,
          fontSize: 11,
        ).merge(style),
      );

  factory SFAppText.red14Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.red,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.gold16Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.tulipTreeGold,
          fontSize: 16,
        ),
      );

  factory SFAppText.black12Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.black10Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.black12Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.black10Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.black32Bold(
          {String text,
          TextAlign textAlign,
          TextOverflow textOverflow,
          int maxLines}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 32,
        ),
      );

  factory SFAppText.white12Normal({
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
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 12,
        ),
      );

  factory SFAppText.white13Normal(
          {String text,
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
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 13,
        ).merge(style),
      );

  factory SFAppText.white14SemiBold({
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
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 14,
        ),
      );

  factory SFAppText.white10Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 10,
        ),
      );

  factory SFAppText.white7Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 7,
        ),
      );

  factory SFAppText.white10Normal({
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
        color: Colors.white,
        fontSize: 10,
      ),
    );
  }

  factory SFAppText.white18Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18,
        ),
      );

  factory SFAppText.tulipTreeGold12Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.tulipTreeGold,
          fontSize: 12,
        ).merge(style),
      );

  factory SFAppText.tulipTreeGold12Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 12,
        ),
      );

  factory SFAppText.tulipTreeGold14Bold({
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
          fontWeight: FontWeight.bold,
          color: SFAppColor.tulipTreeGold,
          fontSize: 14,
        ),
      );

  factory SFAppText.tulipTreeGold14Normal({
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
          fontWeight: FontWeight.normal,
          color: SFAppColor.tulipTreeGold,
          fontSize: 14,
        ).merge(style),
      );

  factory SFAppText.tulipTreeGold16Normal({
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
          color: SFAppColor.tulipTreeGold,
          fontSize: 16,
        ),
      );

  factory SFAppText.tulipTreeGold16Bold(
          {String text,
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
                color: SFAppColor.tulipTreeGold,
                fontSize: 16,
                fontWeight: FontWeight.bold)
            .merge(style),
      );

  factory SFAppText.tulipTreeGold18Normal({
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
          color: SFAppColor.tulipTreeGold,
          fontSize: 18,
        ),
      );

  factory SFAppText.tulipTreeGold16SemiBold({
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
          fontWeight: FontWeight.w600,
          color: SFAppColor.tulipTreeGold,
          fontSize: 16,
        ),
      );

  factory SFAppText.tulipTreeGold10italic({
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
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          color: SFAppColor.tulipTreeGold,
          fontSize: 10,
        ).merge(style),
      );

  factory SFAppText.tulipTreeGold14italic({
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
          fontStyle: FontStyle.italic,
          color: SFAppColor.tulipTreeGold,
          fontSize: 14,
        ),
      );

  factory SFAppText.dimGrey12italic({
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
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.dimGrey,
        fontSize: 12,
      ),
    );
  }

  factory SFAppText.black12italic({
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
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.black,
        fontSize: 12,
      ),
    );
  }

  factory SFAppText.black14italic({
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
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: SFAppColor.black,
        fontSize: 14,
      ),
    );
  }

  factory SFAppText.red12({@required String text, TextStyle style}) {
    return SFAppText(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: SFAppColor.red,
        fontSize: 12,
      ).merge(style),
    );
  }

  factory SFAppText.white24Normal({
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
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 24,
        ),
      );

  factory SFAppText.white24Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ).merge(style),
      );

  factory SFAppText.white22Bold({
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 22,
        ),
      );

  factory SFAppText.white45Bold(
          {String text,
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
        ).merge(style),
      );

  factory SFAppText.islamicGreen14Normal({
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
          color: SFAppColor.islamicGreen,
          fontSize: 14,
        ),
      );

  factory SFAppText.green12Normal(
          {String text,
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

  const SFAppText(
    this.data, {
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
