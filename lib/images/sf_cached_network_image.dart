import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef OnGetRatioImage = Function(double ratio);

class SFCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final Widget placeholder;
  final Widget errorWidget;
  final ImageErrorWidgetBuilder errorBuilder;
  final ImageLoadingBuilder loadingBuilder;
  final double width;
  final double height;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Color color;
  final BlendMode colorBlendMode;
  final FilterQuality filterQuality;
  final Color backgroundColor;

  SFCachedNetworkImage({
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
    this.errorBuilder,
    this.loadingBuilder,
    this.backgroundColor, this.onGetRatioImage,
  }) : super(key: key);

  int get getCacheHeight {
    if (height == null || height.isInfinite) return null;
    return (height * 2).toInt();
  }

  int get getCacheWidth {
    if (width == null || width.isInfinite) return null;
    return (width * 2).toInt();
  }
  final OnGetRatioImage onGetRatioImage;

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      imageUrl,
      width: width,
      height: height,
      cacheWidth: getCacheHeight != null ? null : getCacheWidth,
      cacheHeight: getCacheHeight,
      color: color,
      colorBlendMode: colorBlendMode,
      errorBuilder: (context, error, stackTrace) {
        return errorWidget ??
            errorBuilder?.call(context, error, stackTrace) ??
            SizedBox();
      },
      repeat: repeat,
      alignment: alignment,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingBuilder?.call(context, child, loadingProgress) ??
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              layoutBuilder: (currentChild, previousChildren) => currentChild,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(child: child, opacity: animation);
              },
              child: loadingProgress == null
                  ? child
                  : (placeholder ?? SizedBox()),
            );
      },
      frameBuilder: (BuildContext context, Widget child, int frame,
          bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return frame != null ? child : (placeholder ?? SizedBox());
      },
      filterQuality: filterQuality,
      fit: fit,
    );
    image.image
        .resolve(ImageConfiguration())
        .addListener(ImageStreamListener(
            (ImageInfo info, bool _) {
              if(onGetRatioImage != null){
                onGetRatioImage(info.image.width/info.image.height);
              }
        }
    ));
    return Container(
      color: backgroundColor ?? Colors.transparent,
      child: image,
    );
  }
}
