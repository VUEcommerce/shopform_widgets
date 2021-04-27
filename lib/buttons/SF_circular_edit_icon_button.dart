import 'package:flutter/material.dart';
import 'package:shopform_widgets/icons/sf_circular_edit_icon.dart';

class SFCircularEditIconButton extends StatelessWidget {
  final VoidCallback onTap;

  SFCircularEditIconButton({
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: SFCircularEditIcon(),
      ),
    );
  }
}
