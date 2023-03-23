import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Screen"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.yellowAccent,
      ),
    );
  }
}
