import 'package:flutter/material.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_effect.dart';

class SFLoadingAvatar extends StatelessWidget {
  final double size;

  SFLoadingAvatar({required this.size});

  @override
  Widget build(BuildContext context) {
    return SFLoadingEffect(
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
