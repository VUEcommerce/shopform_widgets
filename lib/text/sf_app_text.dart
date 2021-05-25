import 'package:flutter/material.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFAppText extends StatelessWidget {
  factory SFAppText.gainsboroGray12Normal({required String text}) {
    return SFAppText(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: SFAppColor.gainsboroGray),
    );
  }

  factory SFAppText.dimGrey14Bold({
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? style,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? style,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? style,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? style,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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

  factory SFAppText.red11Italic(
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
      SFAppText(
        text,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: SFAppColor.lightRed,
          fontSize: 11,
          fontStyle: FontStyle.italic,
        ).merge(style),
      );

  factory SFAppText.red14Bold(
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    TextStyle? style,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    TextStyle? style,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    TextStyle? style,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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

  factory SFAppText.red12({required String text, TextStyle? style}) {
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
    required String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
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
          {required String text,
          TextAlign? textAlign,
          TextOverflow? textOverflow,
          int? maxLines,
          TextStyle? style}) =>
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
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const SFAppText(
    this.data, {
    this.style,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: SFAppTextStyle.of(context)?.merge(style),
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
