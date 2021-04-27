import 'package:flutter/material.dart';
import 'package:shopform_widgets/cards/sf_product_item_layout.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';

class SFCollectionProductCard extends StatelessWidget {
  final String collectionsName;
  final String name;
  final String price;
  final String image;
  final double imageRatio;
  final Widget overlay;

  SFCollectionProductCard(
      {this.collectionsName,
      this.name,
      this.price,
      this.image,
      this.imageRatio,
      this.overlay});

  @override
  Widget build(BuildContext context) {
    return SFProductItemLayout(
      image: image,
      imageRatio: imageRatio ?? (133.98 / 202.38),
      overlay: overlay,
      info: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SFContentSpace.vertical8(),
          if (!(collectionsName == null || collectionsName.isEmpty))
            Expanded(
              child: Container(
                height: 16,
                child: SFAppText.black14Bold(
                  text: collectionsName ?? '',
                ),
              ),
            ),
          Expanded(
            child: Container(
              height: 16,
              child: SFAppText.black12Normal(
                text: name ?? '',
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 16,
              child: SFAppText.black12Normal(
                text: price ?? '',
              ),
            ),
          )
        ],
      ),
    );
  }
}
