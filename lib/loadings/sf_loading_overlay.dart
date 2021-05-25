import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shopform_widgets/mixins/sf_theme_mixin.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';

class SFLoadingOverlay extends StatefulWidget {
  final int animateDuration;

  /// Display widget at the top (before) of spinner
  final Widget? top;

  /// Display widget at the bottom (after) of spinner
  final Widget? bottom;

  final bool isLoading;

  final double opacity;

  final Color? color;

  final Color loadingCircleColor;

  final double loadingCircleSize;

  final Widget progressIndicator;

  final Widget child;

  const SFLoadingOverlay({
    Key? key,
    this.animateDuration = 250,
    this.top,
    this.bottom,
    required this.child,
    this.isLoading = false,
    this.opacity = 0.5,
    this.progressIndicator = const CircularProgressIndicator(),
    this.color,
    this.loadingCircleColor = Colors.white,
    this.loadingCircleSize = 48.0,
  }) : super(key: key);

  @override
  _SFLoadingOverlayState createState() => _SFLoadingOverlayState();

  factory SFLoadingOverlay.switchUserType({
    String message = '',
    bool isLoading = false,
    required Widget child,
  }) {
    return SFLoadingOverlay(
      bottom: SFAppText.white24Normal(
        text: message,
        textAlign: TextAlign.center,
      ),
      isLoading: isLoading,
      color: Colors.black,
      opacity: 0.75,
      loadingCircleSize: 64.0,
      child: child,
    );
  }
}

class _SFLoadingOverlayState extends State<SFLoadingOverlay>
    with SFThemeMixin, SingleTickerProviderStateMixin {
  AnimationController? _spinKitController;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _overlayVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.animateDuration));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        return setState(() => {_overlayVisible = true});
      }
      if (status == AnimationStatus.dismissed) {
        return setState(() => {_overlayVisible = false});
      }
    });
    if (widget.isLoading) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(SFLoadingOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isLoading && widget.isLoading) {
      _controller.forward();
    }

    if (oldWidget.isLoading && !widget.isLoading) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _spinKitController?.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    widgets.add(widget.child);

    if (_overlayVisible == true) {
      final _bottomWidget = widget.bottom != null
          ? Container(
              padding: EdgeInsets.only(top: 24.0),
              child: widget.bottom,
            )
          : Container();

      final _topWidget = widget.top != null
          ? Container(
              padding: EdgeInsets.only(bottom: 24.0),
              child: widget.top,
            )
          : Container();
      final modal = FadeTransition(
        opacity: _animation,
        child: Stack(
          children: <Widget>[
            Opacity(
              child: ModalBarrier(
                dismissible: false,
                color: widget.color ?? Theme.of(context).colorScheme.background,
              ),
              opacity: widget.opacity,
            ),
            Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _topWidget,
                SpinKitCircle(
                  size: widget.loadingCircleSize,
                  color: widget.loadingCircleColor,
                  controller: _spinKitController,
                ),
                _bottomWidget,
              ],
            )),
          ],
        ),
      );
      widgets.add(modal);
    }

    return Stack(children: widgets);
  }
}
