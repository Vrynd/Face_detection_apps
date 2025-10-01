import 'package:face_detection_app/widget/camera_view.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Face Detection App',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primaryContainer,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: CameraView(),
    );
  }
}
