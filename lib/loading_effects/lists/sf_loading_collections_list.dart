import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_effect.dart';

class SFLoadingCollectionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: SFProductConstants.defaultListItemsCount,
      itemBuilder: (context, index) {
        return SFLoadingEffect.collectionItemInDetailList();
      },
    );
  }
}
