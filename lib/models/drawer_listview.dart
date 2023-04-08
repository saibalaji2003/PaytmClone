import 'package:flutter/material.dart';

class DrawerListModel {
  final IconData icon;
  final String text1;
  final String text2;
  final bool isDividerShown;
  final Widget? navigatorScreen;
  final bool isIconShown;

  DrawerListModel({
    required this.icon,
    required this.text1,
    required this.text2,
    this.isDividerShown = true,
    this.navigatorScreen,
    this.isIconShown = true,
  });
}
