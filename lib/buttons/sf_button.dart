import 'package:flutter/material.dart';
import 'package:shopform_widgets/buttons/sf_pressable_widget.dart';
import 'package:shopform_widgets/constants/sf_button_constants.dart';

enum SFIconPosition {
  left,
  right,
}

class SFButton extends StatelessWidget {
  static const disabledButtonOpacity = 0.7;
  static const enabledButtonOpacity = 1.0;
  static const disabledAreaOpacity = 0.4;

  final bool enabled;

  /// This set the position of the icon
  ///
  /// Default is IconPosition.left
  final SFIconPosition iconPosition;

  final double iconSize;

  /// This is a builder class for a nice button
  ///
  /// Icon can be used to define the button design
  /// User can use Flutter built-in Icons or font-awesome flutter's Icon  final bool mini;
  final IconData icon;

  /// specify the color of the icon
  final Color iconColor;

  /// radius can be used to specify the button border radius
  final double radius;

  /// List of gradient colors to define the gradients
  final List<Color> gradientColors;

  final List<Color> gradientDisabledColors;

  /// This is the button's text
  final String text;

  /// This is the color of the button's text
  final Color textColor;

  /// Style of the button's text
  final TextStyle textStyle;

  /// User can define the background color of the button
  final Color background;

  final Color borderColor;

  /// User can define the width of the button
  final double width;

  /// User can define the height of the button
  final double height;

  /// Here user can define what to do when the button is clicked or pressed
  final VoidCallback onPressed;

  /// This is the elevation of the button
  final double elevation;

  /// This is the padding of the button
  final EdgeInsets padding;

  /// `mini` tag is used to switch from a full-width button to a small button
  final bool mini;

  /// This is the font size of the text
  final double fontSize;

  final bool isOutlined;

  final bool isTransparent;

  const SFButton({
    Key key,
    this.enabled = true,
    this.iconPosition = SFIconPosition.left,
    this.mini = false,
    this.iconSize,
    this.radius = SFButtonConstants.radius,
    this.elevation = 1.8,
    this.textColor = Colors.white,
    this.isTransparent = false,
    this.textStyle,
    this.iconColor = Colors.white,
    this.width,
    this.height = 46.0,
    this.padding = const EdgeInsets.all(12.0),
    this.onPressed,
    @required this.text,
    @required this.background,
    this.gradientColors = const [],
    this.gradientDisabledColors,
    this.icon,
    this.fontSize = 23.0,
    this.borderColor = Colors.transparent,
    this.isOutlined = false,
  }) : super(key: key);

  factory SFButton.accent({
    Key key,
    BuildContext context,
    bool enabled = true,
    double elevation = 0,
    @required String text,
    VoidCallback onPressed,
    IconData icon,
    double iconSize,
    double radius = SFButtonConstants.radius,
    Colors textColor,
    Color backgroundColor,
    EdgeInsets padding,
    double width,
    double height = 46.0,
    bool isOutlined = false,
    TextStyle textStyle,
  }) {
    final _theme = Theme.of(context);
    final _accentColor = _theme.accentColor;
    final _disabledColor = _theme.disabledColor;
    final _borderColor = backgroundColor;

    final _defaultTextStyle = Theme.of(context).accentTextTheme.button.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: textColor ?? Colors.white,
        );

    return SFButton(
      enabled: enabled,
      background: Colors.white,
      icon: icon,
      elevation: elevation,
      gradientDisabledColors: [
        _accentColor.withAlpha(191),
        _accentColor.withAlpha(191),
      ],
      gradientColors: [
        backgroundColor ?? _accentColor,
        backgroundColor ?? _accentColor,
      ],
      onPressed: enabled ? onPressed?.call : null,
      radius: radius,
      padding: padding,
      iconSize: iconSize,
      text: text,
      textStyle: textStyle ?? _defaultTextStyle,
      width: width ?? MediaQuery.of(context).size.width * 0.85,
      height: height,
      isOutlined: isOutlined,
      borderColor:
          isOutlined ? (_borderColor ?? _accentColor) : Colors.transparent,
    );
  }

  factory SFButton.primary(
      {Key key,
      @required BuildContext context,
      bool enabled = true,
      double elevation = 0,
      @required String text,
      VoidCallback onPressed,
      EdgeInsets padding,
      bool isTransparent = false,
      double radius = SFButtonConstants.radius,
      Colors textColor,
      double width,
      double height = 46.0,
      bool isOutlined = false,
      TextStyle textStyle,
      Color borderColor}) {
    final _theme = Theme.of(context);
    final _primaryColor = _theme.primaryColor;
    final _disabledColor = _theme.disabledColor;

    final _defaultTextStyle =
        Theme.of(context).primaryTextTheme.button.copyWith(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: textColor ?? isOutlined ? _primaryColor : Colors.white,
            );

    return SFButton(
      enabled: enabled,
      elevation: elevation,
      background: Colors.white,
      isTransparent: isTransparent,
      gradientDisabledColors: [
        _disabledColor,
        _disabledColor,
      ],
      gradientColors: isOutlined
          ? [Colors.transparent, Colors.transparent]
          : [
              _primaryColor,
              _primaryColor,
            ],
      onPressed: onPressed?.call,
      radius: radius,
      text: text,
      padding: padding,
      textStyle: textStyle ?? _defaultTextStyle,
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      isOutlined: isOutlined,
      borderColor:
          isOutlined ? (borderColor ?? _primaryColor) : Colors.transparent,
    );
  }

  bool get existGradientColors => gradientColors.isNotEmpty;

  LinearGradient get linearGradient => enabled
      ? existGradientColors
          ? LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.topRight)
          : LinearGradient(colors: [background, background])
      : LinearGradient(colors: gradientDisabledColors);

  BoxDecoration get _boxDecoration => BoxDecoration(
      border: Border.all(
        color: borderColor,
      ),
      gradient: linearGradient,
      borderRadius: BorderRadius.circular(radius));

  BoxDecoration get _boxDecorationOutlined => BoxDecoration(
      border: Border.all(
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(radius));

  TextStyle get _defaultTextStyle => TextStyle(
      color: textColor, fontSize: fontSize, fontWeight: FontWeight.bold);

  Widget _createContainer(BuildContext context) => mini
      ? Container(
          decoration: _boxDecoration,
          width: width ?? 65.0,
          height: width ?? 65.0,
          child: Icon(icon, color: iconColor ?? Colors.white),
        )
      : Container(
          padding: padding,
          height: height,
          decoration: isOutlined ? _boxDecorationOutlined : _boxDecoration,
          constraints: BoxConstraints(
              maxHeight: height,
              maxWidth: width ?? MediaQuery.of(context).size.width / 1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (icon != null && iconPosition == SFIconPosition.left)
                createIcon(),
              Flexible(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textStyle ?? _defaultTextStyle,
                ),
              ),
              if (icon != null && iconPosition == SFIconPosition.right)
                createIcon(),
            ],
          ),
        );

  Widget createIcon() => icon != null
      ? Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: iconSize,
        )
      : Container();

  @override
  Widget build(BuildContext context) {
    return SFPressableWidget(
      onTap: onPressed,
      child: FlatButton(
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        onPressed: null,
        disabledTextColor: Colors.grey[600],
        child: Material(
          color: isTransparent ? Colors.transparent : Colors.white,
          type: MaterialType.button,
          borderRadius: BorderRadius.circular(radius),
          key: key,
          elevation: elevation,
          child: _createContainer(context),
        ),
      ),
    );
  }
}
