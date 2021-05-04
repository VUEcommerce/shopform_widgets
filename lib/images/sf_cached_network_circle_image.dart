import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopform_widgets/images/sf_cached_network_image.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFCachedNetworkCircleImage extends StatelessWidget {
  final String imageUrl;
  final Widget placeholder;
  final Widget errorWidget;
  final double width;
  final double height;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Color color;
  final BlendMode colorBlendMode;
  final FilterQuality filterQuality;

  SFCachedNetworkCircleImage({
    Key key,
    @required this.imageUrl,
    this.placeholder,
    this.errorWidget,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.color,
    this.filterQuality = FilterQuality.low,
    this.colorBlendMode,
  }) : super(key: key);

  int get getCacheHeight {
    if (height == null) return null;
    return (height * 2).toInt();
  }

  int get getCacheWidth {
    if (width == null) return null;
    return (width * 2).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: SFAppColor.black.withOpacity(0.25),
          )
        ],
      ),
      child: ClipOval(
        clipBehavior: Clip.antiAlias,
        child: SFCachedNetworkImage(
          errorWidget: errorWidget,
          placeholder: placeholder,
          imageUrl: imageUrl,
          width: width,
          height: height,
          color: color,
          colorBlendMode: colorBlendMode,
          repeat: repeat,
          alignment: alignment,
          filterQuality: filterQuality,
          fit: fit,
        ),
      ),
    );
  }
}
