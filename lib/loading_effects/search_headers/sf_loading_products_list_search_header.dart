import 'package:flutter/material.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_container.dart';

class SFLoadingProductsListSearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SFLoadingContainer(height: 38, radius: 4),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SFLoadingContainer(height: 19, width: 79),
              const SizedBox(width: 6),
              SFLoadingContainer(height: 19, width: 79),
              Spacer(),
              SFLoadingContainer(height: 19, width: 111),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
