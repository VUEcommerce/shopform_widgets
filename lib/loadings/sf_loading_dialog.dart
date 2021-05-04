import 'package:flutter/material.dart';
import 'package:shopform_widgets/loadings/sf_loading_overlay.dart';

class SFLoadingDialog extends StatefulWidget {
  const SFLoadingDialog({Key key}) : super(key: key);

  @override
  _SFLoadingDialogState createState() => _SFLoadingDialogState();
}

class _SFLoadingDialogState extends State<SFLoadingDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      child: SFLoadingOverlay(
        isLoading: true,
        child: Container(),
        color: Colors.transparent,
      ),
    );
  }
}
