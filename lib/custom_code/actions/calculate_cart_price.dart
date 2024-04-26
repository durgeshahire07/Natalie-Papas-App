// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future calculateCartPrice() async {
  List<dynamic> cart = FFAppState().cart;

  double totalPrice = 0.0;

  for (var item in cart) {
    double price = item['subtotal'];
    totalPrice += price;
  }

  totalPrice = double.parse(totalPrice.toStringAsFixed(2));

  FFAppState().update(() {
    FFAppState().cartPrice = totalPrice;
  });

  debugPrint('$totalPrice');
}
