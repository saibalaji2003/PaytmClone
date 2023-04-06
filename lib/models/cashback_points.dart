import 'package:flutter/material.dart';

class CashbackPointsModel {
  final String containerText;
  final IconData icon;
  final String text1;
  final String text2;
  final bool isContainerShown;
  CashbackPointsModel({
    required this.containerText,
    required this.icon,
    required this.text1,
    required this.text2,
    this.isContainerShown = true,
  });
}
