import 'package:flutter/material.dart';
import 'package:sapid/presentation/pages/loginPage.dart';
import 'package:sapid/presentation/pages/register.dart';
import 'package:sapid/utils/constants/Constant.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Future(() => showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        builder: (context) {
          return ModalBottomSheet();
        }));
    return Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}

class ModalBottomSheet extends StatefulWidget {
  _ModalBottomSheetState createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet>
    with SingleTickerProviderStateMixin {
  Widget build(BuildContext context) {
    var heightOfModalBottomSheet = MediaQuery.of(context).size.height * 0.85;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: heightOfModalBottomSheet,
      width: width,
      //color: Colors.white,
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(15.0),
              topRight: const Radius.circular(15.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem Ipsum",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            child: Image.asset('assets/g4.png', width: 250.0),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width * 0.8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff16243e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(signUp);
              },
              child: Text("Start your application",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(loginpage);
            },
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
