import 'package:flutter/material.dart';
import 'package:shopform_widgets/icons/sf_circular_delete_icon.dart';

class SFCircularDeleteIconButton extends StatelessWidget {
  final VoidCallback onTap;

  SFCircularDeleteIconButton({
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: SFCircularDeleteIcon(),
      ),
    );
  }
}
