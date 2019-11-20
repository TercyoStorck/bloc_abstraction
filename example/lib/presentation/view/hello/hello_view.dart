import 'package:flutter/material.dart';

class HelloView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello!!"),
        ),
        body: Center(
          child: Text("Hello!!!"),
        ),
      );
  }
}