import 'package:flutter/material.dart';
import 'package:shopform_widgets/images/sf_base_cached_network_image.dart';

typedef SFOnGetRatioImage = Function(double ratio);

mixin SFGettingRatioNetworkImageHelper<T extends SFBaseCachedNetworkImage>
    on State<T> {
  ImageProvider image;
  ImageStream imageStream;
  ImageStreamListener imageStreamListener;

  bool get _needGetRatio => widget.onGetRatioImage != null;

  @override
  void initState() {
    super.initState();
    if (_needGetRatio) {
      imageStreamListener = ImageStreamListener((info, _) {
        widget.onGetRatioImage(info.image.width / info.image.height);
      });
    }

    _getImage();
  }

  void _getImage() {
    image = NetworkImage(widget.imageUrl);
    //remove the old [imageStream] if widget is updated
    if (_needGetRatio && imageStream != null) {
      _removeImageStreamListener();
    }
    if (_needGetRatio) {
      imageStream = image.resolve(ImageConfiguration());
      _addImageStreamListener();
    }
  }

  void _addImageStreamListener() {
    if (_needGetRatio) {
      imageStream?.addListener(imageStreamListener);
    }
  }

  void _removeImageStreamListener() {
    if (_needGetRatio) {
      imageStream?.removeListener(imageStreamListener);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _removeImageStreamListener();
  }

  @override
  void didUpdateWidget(SFBaseCachedNetworkImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imageUrl != widget.imageUrl) {
      _getImage();
    }
  }
}
