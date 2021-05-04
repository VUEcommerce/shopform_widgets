import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_effect.dart';

class SFLoadingProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 161 / 310,
      ),
      itemBuilder: (context, index) {
        return SFLoadingEffect.productItemInDetailList(
            screenWidth: MediaQuery.of(context).size.width);
      },
      itemCount: SFProductConstants.defaultGridItemsCount,
      padding: const EdgeInsets.symmetric(horizontal: 16)
          .copyWith(top: 8, bottom: 16),
    );
  }
}
