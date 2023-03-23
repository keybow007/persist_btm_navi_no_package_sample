import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 遷移先の画面は普通にScaffold使って大丈夫
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.redAccent,
      ),
    );
  }
}
