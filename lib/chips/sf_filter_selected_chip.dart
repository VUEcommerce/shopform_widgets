import 'package:flutter/material.dart';
import 'package:shopform_widgets/constants/sf_content_spacer_constants.dart';

class SFFilterSelectedChip extends StatelessWidget {
  final String textChoice;
  final VoidCallback onTapCancel;

  const SFFilterSelectedChip({
    Key key,
    @required this.textChoice,
    @required this.onTapCancel,
  })  : assert(onTapCancel != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.24,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('${textChoice}'),
            SFContentSpacerConstants.horizontalFour,
            SFContentSpacerConstants.horizontalEight,
            GestureDetector(
              onTap: onTapCancel,
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
