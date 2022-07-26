import 'package:flutter/material.dart';
import 'package:mask_dection/splashScreen.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Mask Detection',

      home: MySplashPage(),
    );
  }
}
