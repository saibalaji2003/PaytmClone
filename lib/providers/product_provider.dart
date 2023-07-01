import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  bool isLoading = true;
  bool isErrorOccured = false;
  String errorMessage = '';
  int statusCode = 200;
  Map<String, dynamic> response = {};
  hittingAPI() async {
    isLoading = true;
    notifyListeners();

    var responseData =
        await http.get(Uri.parse('https://dummyjson.com/products'));
    if (responseData.statusCode >= 200 && responseData.statusCode < 300) {
      response = jsonDecode(responseData.body);
      print('response statuscode ${responseData.statusCode}');
      print('response length= ${response["products"].length}');
    } else {
      isErrorOccured = true;
      errorMessage = responseData.reasonPhrase ?? "Something went wrong";
    }
    statusCode = responseData.statusCode;
    isLoading = false;
    notifyListeners();
  }
}
