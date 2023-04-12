import 'package:flutter/material.dart';

class CashbackWonModel {
  final IconData leftCornerIcon;
  final String cashbackReceivedDate;
  final String date;
  final int cashbackReceived;
  final IconData rightCornerIcon;
  final String message;

  CashbackWonModel({
    required this.leftCornerIcon,
    required this.cashbackReceivedDate,
    required this.date,
    required this.cashbackReceived,
    required this.rightCornerIcon,
    required this.message,
  });
}
