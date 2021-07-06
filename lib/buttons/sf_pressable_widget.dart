import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SFPressableWidget extends StatelessWidget {
  final Widget child;
  final void Function() onTap;

  const SFPressableWidget({Key key, this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: 10,
        padding: EdgeInsets.zero,
        color: Colors.transparent,
        child: child,
        onPressed: onTap);
  }
}
