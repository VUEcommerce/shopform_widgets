import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/icons/sf_empty_live_stream_icon.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_container.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFLoadingLiveStreamsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: SFLoadingContainer(
              radius: 4,
              height: 38,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: SFProductConstants.gridItemRatio,
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Stack(
                  children: [
                    SFLoadingContainer(radius: 4, height: null),
                    Center(child: SFEmptyLiveStreamIcon()),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Opacity(
                        opacity: 0.25,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              colors: [
                                SFAppColor.blackShadow,
                                SFAppColor.black,
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
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
