import 'package:google_ml_kit/google_ml_kit.dart';

class FaceDetectionService {
  final FaceDetector _faceDetector;
  FaceDetectionService([FaceDetector? faceDetector])
      : _faceDetector = faceDetector ??
            FaceDetector(
                options: FaceDetectorOptions(
              enableClassification: true,
              enableLandmarks: true,
              enableContours: true,
              enableTracking: true,
            ));

  Future<List<Face>> runDetectingFaces(InputImage inputImage) async {
    final List<Face> faces = await _faceDetector.processImage(inputImage);

    return faces;
  }

  Future<void> close(){
    return _faceDetector.close();
  }
}
