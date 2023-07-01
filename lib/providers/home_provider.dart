import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeProvider extends ChangeNotifier {
  XFile? pickedFile;
  changePickedFile(XFile? pickedFileAsArgs) {
    pickedFile = pickedFileAsArgs;
    notifyListeners();
  }

  List<XFile> pickedImagesList = [];
  addPickedImagesList(List<XFile> pickedImagesArgs) {
    pickedImagesList = pickedImagesArgs;
    notifyListeners();
  }
}
