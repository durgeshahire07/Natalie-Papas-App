// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<dynamic> addToCart(String? productId) async {
  List<dynamic> cart = FFAppState().cart;

  debugPrint("addToCartFromWishlist - API Called");
  debugPrint('addToCartFromWishlist - Product Id: $productId');

  // debug
  // int index = 0;
  // for (var item in cart) {
  //   debugPrint('${item["id"]} , index: $index');
  //   index++;
  // }

  if (productId == null) {
    debugPrint('addToCartFromWishlist - Product ID cannot be null');

    FFAppState().update(() {
      FFAppState().cart = cart;
    });

    return {
      'success': false,
      'message': 'Product ID cannot be null',
    };
  }

  List<dynamic> wishlist = FFAppState().wishlist;

  if (cart.any((item) => item['id'].toString() == productId.toString())) {
    debugPrint('addToCartFromWishlist - Product already exists, increment it');

    int existingProductIndex = cart
        .indexWhere((item) => item['id'].toString() == productId.toString());
    cart[existingProductIndex]['quantity'] += 1;

    wishlist
        .removeWhere((item) => item['id'].toString() == productId.toString());

    FFAppState().update(() {
      FFAppState().cart = cart;
      FFAppState().wishlist = wishlist;
    });

    return {
      'success': true,
      'message': 'Product added to the cart',
    };
  }

  // now add it to the cart with quantity 1
  try {
    final response = await http.get(Uri.parse(
        'https://natalie-papas-backend.onrender.com/api/v1/cart/product/$productId'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final productResponse = jsonResponse['data']['product'];
      cart.add(productResponse);

      debugPrint('addToCartFromWishlist - Product added successfully');

      wishlist
          .removeWhere((item) => item['id'].toString() == productId.toString());

      FFAppState().update(() {
        FFAppState().cart = cart;
        FFAppState().wishlist = wishlist;
      });

      return {
        'success': true,
        'message': 'Product added successfully',
      };
    } else {
      debugPrint('addToCartFromWishlist - Product cannot be added');

      FFAppState().update(() {
        FFAppState().cart = cart;
      });

      return {
        'success': false,
        'message': 'Product cannot be added',
      };
    }
  } catch (error) {
    debugPrint('addToCartFromWishlist - Error Occured, try again later');

    FFAppState().update(() {
      FFAppState().cart = cart;
    });
    return {
      'success': false,
      'message': 'Error Occured, try again later',
    };
  }
}
