import 'package:flutter/material.dart';

class DepartureDateModel {
  final int date;
  final String day;
  final Color containerColor;
  final String stackText;
  final bool isStackShown;
  final bool dateColor;
  final bool daycolor;
  DepartureDateModel({
    required this.date,
    required this.day,
    required this.containerColor,
    required this.stackText,
    this.isStackShown = true,
    this.dateColor = true,
    this.daycolor = true,
  });
}
