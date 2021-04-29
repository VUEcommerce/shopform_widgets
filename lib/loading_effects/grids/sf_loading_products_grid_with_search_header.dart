import 'package:flutter/material.dart';
import 'package:shopform_widgets/loading_effects/grids/sf_loading_products_grid.dart';
import 'package:shopform_widgets/loading_effects/search_headers/sf_loading_products_list_search_header.dart';

class SFLoadingProductsGridWithSearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SFLoadingProductsListSearchHeader(),
        Expanded(child: SFLoadingProductsGrid()),
      ],
    );
  }
}
