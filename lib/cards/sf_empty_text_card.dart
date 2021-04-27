import 'package:flutter/material.dart';
import 'package:shopform_widgets/cards/sf_card_view.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';

class SFEmptyTextCard extends StatelessWidget {
  final String text;
  final EdgeInsets padding;

  SFEmptyTextCard({this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return SFCardView(
      padding: padding ?? EdgeInsets.all(28),
      child: Center(
        child: SFAppText.dimGrey12italic(
          text: text ?? '',
        ),
      ),
    );
  }
}
