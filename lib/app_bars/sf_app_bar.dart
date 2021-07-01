import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shopform_widgets/text_fields/sf_search_field.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final bool isTransparent;
  final bool isEmpty;
  static const double _defaultElevation = 4.0;

  const SFAppBar({
    Key key,
    this.appBar,
    this.isEmpty = false,
    this.isTransparent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final appBarTheme = AppBarTheme.of(context);
    final brightness =
        appBarTheme.brightness ?? themeData.primaryColorBrightness;
    final overlayStyle = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return Semantics(
      container: true,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: overlayStyle,
        child: Material(
          color: isTransparent
              ? Colors.transparent
              : appBarTheme?.color ??
              themeData.primaryColor, // appBarTheme?.color ??
          elevation:
          isTransparent ? 0.0 : appBarTheme?.elevation ?? _defaultElevation,
          child: Semantics(
            explicitChildNodes: true,
            child: isEmpty || appBar == null ? Container() : appBar,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => isEmpty
      ? Size(0.0, 0.0)
      : Size.fromHeight((appBar != null ? kToolbarHeight : 0.0) +
      (appBar != null ? appBar.bottom?.preferredSize?.height ?? 0.0 : 0.0));

  factory SFAppBar.empty({bool isTransparent = false}) {
    return SFAppBar(isEmpty: true, isTransparent: isTransparent);
  }

  factory SFAppBar.loading({
    List<Widget> actions,
    bool centerTitle,
    Text title,
    bool isTransparent,
    Widget leading,
  }) {
    return SFAppBar(
      appBar: AppBar(
        actions: actions,
        backgroundColor: Colors.transparent,
        centerTitle: centerTitle,
        leading: leading,
        title: title,
      ),
      isTransparent: isTransparent,
    );
  }

  factory SFAppBar.primary({
    List<Widget> actions,
    bool automaticallyImplyLeading = true,
    bool centerTitle,
    String title,
    double titleFontSize,
    bool isTransparent,
    Widget leading,
    PreferredSizeWidget bottom,
  }) {
    return SFAppBar(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: actions,
        centerTitle: centerTitle,
        leading: leading,
        title: title != null
            ? Text(
          title,
          style: TextStyle(
              fontSize: titleFontSize, fontWeight: FontWeight.bold),
        )
            : null,
        bottom: bottom,
      ),
    );
  }

  factory SFAppBar.withSearchBar({
    TextStyle hintStyle,
    @required String hintText,
    List<Widget> actions,
    Widget leading,
    bool automaticallyImplyLeading,
    Widget suffixIcon,
    ValueChanged<String> onSubmitted,
    ValueChanged<bool> onFocusChanged,
    TextEditingController controller,
    bool autoFocus = false,
    bool enable = true,
    bool alwaysHideCancel = false,
    bool permanentCancelButton = false,
    VoidCallback onTap,
    VoidCallback onCancel,
    VoidCallback onEditingComplete,
    @required String cancelText,
  }) {
    return SFAppBar(
      appBar: AppBar(
          key: Key('purchases_app_bar'),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: automaticallyImplyLeading ?? false,
          titleSpacing: 0,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 35,
            child: SFSearchField(
              onEditingComplete: onEditingComplete,
              cancelText: cancelText,
              hint: hintText,
              cancelColor: Colors.white,
              suffixIcon: suffixIcon,
              onSubmitted: onSubmitted,
              controller: controller,
              onCancel: onCancel,
              onFocusChanged: onFocusChanged,
              onTap: onTap,
              autoFocus: autoFocus,
              alwaysHideCancel: alwaysHideCancel,
              permanentCancelButton: permanentCancelButton,
              enable: enable,
            ),
          ),
          leading: leading,
          actions: actions),
    );
  }

  factory SFAppBar.primaryWhite({
    List<Widget> actions,
    bool automaticallyImplyLeading = true,
    bool centerTitle,
    String title,
    double titleFontSize,
    bool isTransparent,
    Widget leading,
    PreferredSizeWidget bottom,
  }) {
    return SFAppBar(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        iconTheme: IconThemeData(color: SFAppColor.black),
        actions: actions,
        centerTitle: centerTitle,
        leading: leading,
        backgroundColor: SFAppColor.white,
        elevation: 0,
        title: title != null
            ? Text(
          title,
          style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
              color: SFAppColor.black),
        )
            : null,
        bottom: bottom,
      ),
      isTransparent: true,
    );
  }

  factory SFAppBar.primaryTransparent({
    List<Widget> actions,
    bool automaticallyImplyLeading = true,
    bool centerTitle,
    String title,
    double titleFontSize,
    bool isTransparent,
    Widget leading,
    PreferredSizeWidget bottom,
  }) {
    return SFAppBar(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        iconTheme: IconThemeData(color: SFAppColor.black),
        actions: actions,
        centerTitle: centerTitle,
        leading: leading,
        backgroundColor: SFAppColor.transparent,
        elevation: 0,
        title: title != null
            ? Text(
          title,
          style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
              color: SFAppColor.black),
        )
            : null,
        bottom: bottom,
      ),
      isTransparent: true,
    );
  }
}

class VueAppBarAction extends StatelessWidget {
  factory VueAppBarAction.icon({Widget icon, VoidCallback onTap}) =>
      VueAppBarAction(
        child: icon,
        onTap: onTap,
      );

  final Widget child;
  final VoidCallback onTap;

  VueAppBarAction({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: Material(
        type: MaterialType.circle,
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
            onTap: () {
              onTap?.call();
            },
            child: Center(
              child: child ?? SizedBox(),
            )),
      ),
    );
  }
}