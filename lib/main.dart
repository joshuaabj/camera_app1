import 'package:camera/camera.dart';
import 'package:camera_app1/main_page.dart';
import 'package:flutter/material.dart';

Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(MainApp(cameras: cameras,));
}

class MainApp extends StatelessWidget {
  final List<CameraDescription>cameras;
  const MainApp({super.key, required this.cameras});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(cameras: cameras,),
    );}}