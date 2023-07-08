import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text("$name"),
        ),
      ),
    );
  }
}
