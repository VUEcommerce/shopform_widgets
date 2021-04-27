import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopform_widgets/cards/sf_card_view.dart';
import 'package:shopform_widgets/cards/sf_empty_text_card.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:vue_app/components/variant_chip/variant_chip.dart';
import 'package:vue_app/features/store_product/base_detail/models/measurement_model.dart';
import 'package:vue_app/models/measurement/measurement_category/measurement_category.dart';
import 'package:vue_app/util/constants/constants.dart';
import 'package:vue_app/util/extensions/extensions.dart';

class SFSizingGuideCard extends StatelessWidget {
  final List<MeasurementModel> models;

  SFSizingGuideCard({this.models});

  @override
  Widget build(BuildContext context) {
    if (models.isNullOrEmpty ||
        models.every((element) => element.categories.isNullOrEmpty)) {
      return SFEmptyTextCard(
        text: LocaleText.textNoSizingGuideSpecified.tr(),
      );
    }

    return SFCardView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SFAppText.black12Bold(
            text: LocaleText.textUnit.tr(),
          ),
          SFContentSpace.vertical12(),
          VariantChip(
            text: models.first.unit,
            type: VariantChipType.selected,
            enableIcon: false,
          ),
          SFContentSpace.vertical24(),
          SFAppText.black12Bold(
            text: LocaleText.textMeasurements.tr(),
          ),
          SFContentSpace.vertical8(),
          buildMeasureCategoryTitles(
              categories: models
                  .firstWhere(
                    (element) => element.categories.isNotNull,
                    orElse: () => null,
                  )
                  ?.categories),
          ...buildSizingGuides(),
        ],
      ),
    );
  }

  Widget buildMeasureCategoryTitles({List<MeasurementCategory> categories}) {
    if (categories.isNullOrEmpty) {
      return SizedBox();
    }
    return SFAppText.dimGrey12Normal(
        text: categories.map((e) => e.name).join(' - '));
  }

  Widget buildSizingGuideRow({MeasurementModel model}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          if (model.colorModel.isNotNull)
            SFAppText.black12Normal(
                text: model.colorModel.displayText + ' - ', maxLines: 1),
          if (model.sizeModel.isNotNull)
            Expanded(
                child: SFAppText.black12Normal(
                    text: model.sizeModel.displayText, maxLines: 1)),
          SFAppText.black12Normal(
              text: model.categories.map((e) => e.value ?? 0.0).join(' - '),
              maxLines: 1),
        ],
      ),
    );
  }

  List<Widget> buildSizingGuides() {
    return models
        .where((model) => !model.categories.isNullOrEmpty)
        .map((mode) => buildSizingGuideRow(model: mode))
        .toList();
  }
}
