import 'package:face_detection_app/controller/camera_provider.dart';
import 'package:face_detection_app/service/face_detection_service.dart';
import 'package:face_detection_app/ui/camera_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (context) => FaceDetectionService()),
      ChangeNotifierProvider(
          create: (context) => CameraProvider(context.read())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Face Detection App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        fontFamily: 'sora',
        useMaterial3: true,
      ),
      home: const CameraPage(),
    );
  }
}
