import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';
import 'package:shopform_widgets/images/sf_cached_network_image.dart';

class SFNetworkImage extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final Widget placeholder;
  final Widget errorWidget;
  final BoxFit fit;
  final Color backgroundColor;
  final bool round;

  const SFNetworkImage(
      {Key key,
      this.image,
      this.height,
      this.width,
      this.placeholder,
      this.errorWidget,
      this.fit,
      this.round = false,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidget = SFCachedNetworkImage(
      imageUrl: image ?? '',
      fit: fit,
      height: height,
      width: width,
      backgroundColor: backgroundColor,
      errorWidget: errorWidget ??
          Image.asset(
            productPlaceholder,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
      placeholder: placeholder ??
          Image.asset(
            productPlaceholder,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
    );
    return round
        ? ClipOval(
            child: imageWidget,
          )
        : imageWidget;
  }
}
