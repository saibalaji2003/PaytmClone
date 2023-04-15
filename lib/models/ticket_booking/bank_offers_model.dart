import 'package:flutter/material.dart';

class BankOffersModel {
  final Color color;

  final String offer;
  final String flightType;
  final String bottomText1;
  final String bottomText2;
  final String promoCode;
  BankOffersModel({
    required this.color,
    required this.offer,
    required this.flightType,
    required this.bottomText1,
    required this.bottomText2,
    required this.promoCode,
  });
}
