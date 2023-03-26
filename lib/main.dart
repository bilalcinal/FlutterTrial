// import 'package:firstproject/101/container_sized_box_learn.dart';
// import 'package:firstproject/101/text_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_lifecycle_view.dart';
import 'demos/my_collections_demos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const NavigationLearnView(),
    );
  }
}
