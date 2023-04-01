import 'package:flutter/material.dart';

class ProductsModel {
  final String image;
  final int discountPercent;
  final int actualPrice;
  final int offerPrice;
  final IconData containerIcon;
  ProductsModel({
    required this.image,
    required this.discountPercent,
    required this.actualPrice,
    required this.offerPrice,
    required this.containerIcon,
  });
}
