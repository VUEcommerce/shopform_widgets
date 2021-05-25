import 'package:flutter/material.dart';

class SFCircularProgressIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;

  const SFCircularProgressIndicator(
      {Key? key, this.size = 24, this.strokeWidth = 2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
