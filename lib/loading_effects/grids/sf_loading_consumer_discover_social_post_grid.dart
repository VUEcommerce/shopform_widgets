import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/icons/sf_empty_live_stream_icon.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_container.dart';
import 'package:shopform_widgets/text_fields/sf_search_field.dart';

class SFLoadingConsumerDiscoverSocialPostGrid extends StatelessWidget {
  final itemWidth;
  final bool showSearchBar;
  final String cancelText;
  final String searchTextFieldHintText;

  const SFLoadingConsumerDiscoverSocialPostGrid({
    Key key,
    this.itemWidth,
    this.showSearchBar = true,
    @required this.cancelText,
    @required this.searchTextFieldHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        if (showSearchBar)
          SliverToBoxAdapter(
            child: SFSearchField(
              cancelText: cancelText,
              hint: searchTextFieldHintText,
              onSubmitted: (keyword) {},
              onCancel: () {},
              enable: false,
              margin: EdgeInsets.only(top: 18, left: 16, right: 16, bottom: 16),
            ),
          ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    SFLoadingContainer(
                        radius: 4, height: itemWidth, width: itemWidth),
                    Center(child: SFEmptyLiveStreamIcon()),
                  ],
                );
              },
              childCount: SFProductConstants.defaultGridItemsCount,
            ),
          ),
        ),
      ],
    );
  }
}
