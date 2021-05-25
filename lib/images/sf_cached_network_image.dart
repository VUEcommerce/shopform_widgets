import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopform_widgets/images/sf_base_cached_network_image.dart';
import 'package:shopform_widgets/images/sf_getting_ratio_network_image_helper.dart';

class SFCachedNetworkImage extends SFBaseCachedNetworkImage {
  final Widget? placeholder;
  final Widget? errorWidget;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Color? color;
  final BlendMode? colorBlendMode;
  final FilterQuality filterQuality;
  final Color? backgroundColor;

  SFCachedNetworkImage({
    Key? key,
    required String imageUrl,
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
    this.backgroundColor,
    SFOnGetRatioImage? onGetRatioImage,
  }) : super(key: key, onGetRatioImage: onGetRatioImage, imageUrl: imageUrl);

  @override
  _VueCachedNetworkImageState createState() => _VueCachedNetworkImageState();
}

class _VueCachedNetworkImageState extends State<SFCachedNetworkImage>
    with SFGettingRatioNetworkImageHelper<SFCachedNetworkImage> {
  int? get getCacheHeight {
    if (widget.height == null || widget.height!.isInfinite) return null;
    return (widget.height! * 2).toInt();
  }

  int? get getCacheWidth {
    if (widget.width == null || widget.width!.isInfinite) return null;
    return (widget.width! * 2).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? Colors.transparent,
      child: Image(
        image: ResizeImage.resizeIfNeeded(
          getCacheHeight != null ? null : getCacheWidth,
          getCacheHeight,
          image,
        ),
        width: widget.width,
        height: widget.height,
        color: widget.color,
        colorBlendMode: widget.colorBlendMode,
        errorBuilder: (context, error, stackTrace) {
          return widget.errorWidget ??
              widget.errorBuilder?.call(context, error, stackTrace) ??
              SizedBox();
        },
        repeat: widget.repeat,
        alignment: widget.alignment,
        loadingBuilder: (context, child, loadingProgress) {
          return widget.loadingBuilder?.call(context, child, loadingProgress) ??
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                layoutBuilder: (currentChild, previousChildren) =>
                    currentChild ?? SizedBox.shrink(),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(child: child, opacity: animation);
                },
                child: loadingProgress == null
                    ? child
                    : (widget.placeholder ?? SizedBox()),
              );
        },
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return frame != null ? child : (widget.placeholder ?? SizedBox());
        },
        filterQuality: widget.filterQuality,
        fit: widget.fit,
      ),
    );
  }
}
