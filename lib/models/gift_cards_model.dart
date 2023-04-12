import 'package:flutter/material.dart';

class GiftCardsModel {
  final IconData icon;
  final String text;
  final String bottomText;
  final bool isStackShown;
  final String stackText;
  GiftCardsModel({
    required this.icon,
    required this.text,
    required this.bottomText,
    this.isStackShown = true,
    required this.stackText,
  });
}
