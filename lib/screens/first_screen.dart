import 'package:flutter/material.dart';
import 'package:persist_btm_navi_no_package_sample/screens/fourth_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 遷移先の画面は普通にScaffold使って大丈夫
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: ElevatedButton(
            onPressed: () => _openFourthScreen(context),
            child: Text("Fourth Screenへすすむ"),
          ),
        ),
      ),
    );
  }

  _openFourthScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => FourthScreen()
    ));
  }
}
