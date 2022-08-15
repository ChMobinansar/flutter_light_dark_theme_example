import 'package:flutter/material.dart';
import 'package:themeexample/themeing/flutter_themes.dart';
import 'package:provider/provider.dart';

import 'app/my_app.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyApp(),
  ));
}
