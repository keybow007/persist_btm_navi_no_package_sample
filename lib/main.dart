import 'package:flutter/material.dart';
import 'package:persist_btm_navi_no_package_sample/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO ここはMaterialAppのままでいい
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
