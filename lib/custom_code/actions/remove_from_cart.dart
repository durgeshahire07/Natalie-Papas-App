// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> removeFromCart(String? productId) async {
  List<dynamic> cart = FFAppState().cart;

  debugPrint("removeFromCart - API Called");
  debugPrint('removeFromCart - Product Id: $productId');

  if (productId == null) {
    debugPrint('removeFromCart - Product ID cannot be null');

    FFAppState().update(() {
      FFAppState().cart = cart;
    });

    return {
      'success': false,
      'message': 'Product ID cannot be null',
    };
  }

  // debug
  // int index = 0;
  // for (var item in cart) {
  //   debugPrint('${item["id"]} , index: $index');
  //   index++;
  // }

  if (cart.any((item) => item['id'].toString() == productId.toString())) {
    debugPrint('removeFromCart - removed from cart');

    cart.removeWhere((item) => item['id'].toString() == productId.toString());

    FFAppState().update(() {
      FFAppState().cart = cart;
    });

    return {
      'success': true,
      'message': 'Removed from cart',
    };
  }

  return {
    'success': false,
    'message': 'Unable to remove from cart',
  };
}
