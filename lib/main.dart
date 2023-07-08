import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sapid/presentation/pages/Inrtopage.dart';
import 'package:sapid/presentation/pages/home.dart';
import 'package:sapid/presentation/pages/login.dart';
import 'package:sapid/presentation/pages/loginPage.dart';
import 'package:sapid/presentation/pages/register.dart';
import 'package:sapid/presentation/pages/splash.dart';
import 'package:sapid/utils/constants/Constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        splashScreen: (BuildContext context) => Splash(),
        loginpage: (BuildContext context) => LoginPage(),
        // signUp: (BuildContext context) =>  SignUpScreen(),
        login: (BuildContext context) => Login(),
        signUp: (BuildContext context) => Register(),
        home: (BuildContext context) => homePage(),
        intropage: (BuildContext context) => Intropage(),
      },
      initialRoute: splashScreen,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
