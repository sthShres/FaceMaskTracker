import 'package:flutter/material.dart';
import 'package:mask_dection/homePage.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({Key? key}) : super(key: key);

  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomePage(),
      title: Text(
        'Face mask Detection app',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.blueAccent,
        ),
      ),
      image: Image.asset("assets/onboarding.png"),
      photoSize: 130,
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
      loadingText: Text(
        "Shres develops",
        style: TextStyle(
          color: Colors.black,
              fontSize: 16.0,
        ),
      ),
    );
  }
}
