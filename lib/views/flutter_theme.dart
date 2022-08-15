import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themeing/flutter_themes.dart';

class Themes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeNotifier>(
          builder: (context, theme, child) => MaterialApp(
              theme: theme.getTheme(),
              home: Scaffold(
                appBar: AppBar(
                  title: Text('Hybrid Theme'),
                ),
                body: Row(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: () => {
                          print('Set Light Theme'),
                          theme.setLightMode(),
                        },
                        child: Text('Set Light Theme'),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: () => {
                          print('Set Dark theme'),
                          theme.setDarkMode(),
                        },
                        child: Text('Set Dark theme'),
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
