import 'package:flutter/material.dart';

class TransactionItemModel {
  String title;
  String subtitle;
  String price;
  Color priceColor;

  TransactionItemModel(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.priceColor});
}
