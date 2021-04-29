import 'package:flutter/material.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_effect.dart';

class SFLoadingContainer extends StatelessWidget {
  final double height;
  final double width;
  final double radius;

  const SFLoadingContainer({
    this.height = 16,
    this.width,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SFLoadingEffect(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(radius)),
        height: height,
        width: width,
      ),
    );
  }
}
