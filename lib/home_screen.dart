import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persist_btm_navi_no_package_sample/screens/first_screen.dart';
import 'package:persist_btm_navi_no_package_sample/screens/second_screen.dart';
import 'package:persist_btm_navi_no_package_sample/screens/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //TODO ここをScaffold => CupertinoTabScaffoldに
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.first_page), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.scale), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.tab), label: "Third"),
        ],
      ),
      tabBuilder: (context, int index) {
        //TODO 画面遷移処理はここで（Navigator.pushを使わない）
        //CupertinoTabViewがNavigatorを持っているのでMaterialAppのNavigatorと別にできる
        // => 画面遷移してもBtmNaviが消えずに残ってくれる
        //  https://qiita.com/canisterism/items/d648da85c300a3751db0#cupertinotab-%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6persist%E3%81%AA%E4%B8%8B%E3%82%BF%E3%83%96%E3%82%92%E6%89%8B%E3%81%AB%E5%85%A5%E3%82%8C%E3%82%8D
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(
                child: FirstScreen(),
              ),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(
                child: SecondScreen(),
              ),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(
                child: ThirdScreen(),
              ),
            );
          default:
            return CupertinoTabView();
        }
      },
    );
  }
}
