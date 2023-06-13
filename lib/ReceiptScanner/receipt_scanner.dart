import 'dart:io';
import 'package:google_ml_kit/google_ml_kit.dart';

class ReceiptScanner {
  static Future<List<String>> processImage(File imageFile) async {
    final textRecognizer = GoogleMlKit.vision.textRecognizer();
    final inputImage = InputImage.fromFile(imageFile);
    final RecognizedText recognisedText =
        await textRecognizer.processImage(inputImage);

    return _extractItemNames(recognisedText.blocks);
  }

  static List<String> _extractItemNames(List<TextBlock> blocks) {
    final List<String> itemNames = [];
    for (TextBlock block in blocks) {
      for (TextLine line in block.lines) {
        final String itemName =
            line.text.trim().replaceAll(RegExp(r'[%*]'), '');
        if (itemName.isNotEmpty) {
          itemNames.add(itemName);
        }
      }
    }
    return itemNames;
  }
}
