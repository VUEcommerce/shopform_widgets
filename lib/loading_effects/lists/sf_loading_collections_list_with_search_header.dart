import 'package:flutter/material.dart';
import 'package:shopform_widgets/loading_effects/lists/sf_loading_collections_list.dart';
import 'package:shopform_widgets/loading_effects/search_headers/sf_loading_collections_grid_search_header.dart';

class SFLoadingCollectionsListWithSearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SFLoadingCollectionsGridSearchHeader(),
        Expanded(child: SFLoadingCollectionsList()),
      ],
    );
  }
}
