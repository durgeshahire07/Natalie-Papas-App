// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> incrementItemInCart(String? productId) async {
  List<dynamic> cart = FFAppState().cart;

  debugPrint("incrementItemInCart - API Called");
  debugPrint('incrementItemInCart - Product Id: $productId');

  // debug
  // int index = 0;
  // for (var item in cart) {
  //   debugPrint('${item["id"]} , index: $index');
  //   index++;
  // }

  if (cart.any((item) => item['id'].toString() == productId.toString())) {
    debugPrint('incrementItemInCart - added to cart');

    int existingProductIndex = cart
        .indexWhere((item) => item['id'].toString() == productId.toString());

    if (cart[existingProductIndex]['quantity'] >= 5) {
      return {
        'success': true,
        'message': 'Limit reached',
      };
    }
    cart[existingProductIndex]['quantity'] += 1;

    double subtotal = cart[existingProductIndex]['quantity'] *
        cart[existingProductIndex]['price'];
    double roundoff = double.parse(subtotal.toStringAsFixed(2));

    cart[existingProductIndex]['subtotal'] = roundoff;

    FFAppState().update(() {
      FFAppState().cart = cart;
    });

    return {
      'success': true,
      'message': 'Cart Updated',
    };
  }

  return {
    'success': false,
    'message': 'Unable to increase the quantity',
  };
}
