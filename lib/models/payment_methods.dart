import 'package:flutter/material.dart';

class PaymentMethodsModel {
  final String text1;
  final IconData icon;
  final String text2;
  final String text3;
  final bool isText1Shown;
  PaymentMethodsModel({
    this.text1 = 'Header',
    required this.icon,
    required this.text2,
    required this.text3,
    this.isText1Shown = false,
  });
}
