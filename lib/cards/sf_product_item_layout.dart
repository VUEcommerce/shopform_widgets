import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/icon_name_constants.dart';
import 'package:shopform_widgets/images/sf_cached_network_image.dart';

class SFProductItemLayout extends StatelessWidget {
  final String image;
  final double imageRatio;

  ///put an [overlay] view above image view
  final Widget overlay;

  ///[info] located at bottom edge of image view
  final Widget info;

  SFProductItemLayout({this.image, this.imageRatio, this.info, this.overlay});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: imageRatio ?? 133.98 / 202.38,
          child: Stack(
            children: [
              Positioned.fill(
                child: (image?.isNotEmpty ?? false)
                    ? SFCachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                        placeholder: Image.asset(productPlaceholder),
                        errorWidget: Image.asset(productPlaceholder),
                      )
                    : Image.asset(productPlaceholder),
              ),
              if (overlay != null) Positioned.fill(child: overlay)
            ],
          ),
        ),
        if (info != null) Expanded(child: info)
      ],
    );
  }
}
