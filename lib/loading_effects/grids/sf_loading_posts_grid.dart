import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_container.dart';

class SFLoadingPostsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: SFProductConstants.defaultGridItemsCount,
      itemBuilder: (context, index) {
        return SFLoadingContainer();
      },
    );
  }
}
