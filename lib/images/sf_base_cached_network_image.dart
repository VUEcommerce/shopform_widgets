import 'package:flutter/material.dart';
import 'package:shopform_widgets/images/sf_getting_ratio_network_image_helper.dart';

abstract class SFBaseCachedNetworkImage extends StatefulWidget {
  final SFOnGetRatioImage? onGetRatioImage;
  final String imageUrl;

  const SFBaseCachedNetworkImage(
      {Key? key, this.onGetRatioImage, required this.imageUrl})
      : super(key: key);
}
