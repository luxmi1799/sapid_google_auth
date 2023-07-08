import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sapid/utils/constants/Constant.dart';
import 'package:sapid/utils/widgets/Intropage_widget.dart';

import '../../utils/widgets/side_cut_clipper.dart';
import 'Inrtopage.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed(intropage));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          child: Center(
            child: Text(
              "LOGO",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
