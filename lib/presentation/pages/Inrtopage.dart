import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sapid/presentation/pages/home.dart';
import 'package:sapid/presentation/pages/login.dart';

import '../../utils/widgets/Intropage_widget.dart';

class Intropage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Intropage();
  }
}

class _Intropage extends State<Intropage> {
  List img = ['assets/g1.png', 'assets/g2.png', 'assets/g3.png'];
  List<Color> color = [Colors.white, Color(0xff16243e), Colors.red];

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Intropage_widget(img: img[0], color: color[0]),
      Intropage_widget(img: img[1], color: color[1]),
      Intropage_widget(img: img[2], color: color[2])
    ];
    return Scaffold(
      body: LiquidSwipe(
          enableLoop: false,
          onPageChangeCallback: (i) {
            if (i == 2) {
              print("object");
              homepage();
            }
          },
          initialPage: 0,
          enableSideReveal: true,
          slideIconWidget: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.white,
            size: 50,
          ),
          pages: pages),
    );
  }

  homepage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }
}
