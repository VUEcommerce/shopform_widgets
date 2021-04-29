import 'package:flutter/material.dart';

typedef OnLoginSuccess = Function();
typedef OnLoginFailure = Function();

mixin SFThemeMixin<T extends StatefulWidget> on State<T> {
  ThemeData get theme => Theme.of(context);
}
