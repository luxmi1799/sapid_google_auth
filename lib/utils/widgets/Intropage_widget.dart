import 'package:flutter/material.dart';
import 'package:sapid/utils/widgets/side_cut_clipper.dart';

class Intropage_widget extends StatelessWidget {
  final Color color;
  final String img;

  const Intropage_widget({
    Key? key,
    required this.img,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double yFactor = 15;
    // TODO: implement build
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Scaffold(
      backgroundColor: color,
      body: Container(
        width: width,
        height: height,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.13,
            ),
            introImage(img),
            SizedBox(
              height: 25,
            ),
            heading(context),
            SizedBox(
              height: 10,
            ),
            subheading(context)
          ],
        ),
      ),
    );
    // return SafeArea(
    //   //child: SingleChildScrollView(
    //   // child: Container(
    //
    //   child: Scaffold(
    //     backgroundColor: color,
    //     body: Stack(
    //       clipBehavior: Clip.none,
    //       // crossAxisAlignment: CrossAxisAlignment.end,
    //       children: [
    //         ClipPath(
    //           clipper: SideCutClipperr(),
    //           child: Container(
    //             height: height,
    //             width: width * 0.94,
    //             color: Colors.white,
    //             alignment: Alignment.centerRight,
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(15.0),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Align(
    //                 alignment: Alignment.topRight,
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //                   child: const Text(
    //                     "Skip",
    //                     style: TextStyle(
    //                         color: Colors.black,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 20),
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               introImage(img),
    //               SizedBox(
    //                 height: 25,
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   heading(context),
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               subheading(context)
    //             ],
    //           ),
    //         ),
    //         Positioned(
    //           top: height - height / 2.3,
    //           left: width * 0.75,
    //           child: IconButton(
    //               onPressed: () {},
    //               icon: Icon(
    //                 Icons.arrow_circle_right_outlined,
    //                 color: Colors.white,
    //                 size: 60,
    //               )),
    //         )
    //       ],
    //     ),
    //   ),
    //   //  ),
    //   //  ),
    // );
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 300.0),
      alignment: Alignment.center,
    );
  }

  Widget heading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Text(
          "Lorem ipsum",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget subheading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing industry. Lorem Ipsum has been . ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
