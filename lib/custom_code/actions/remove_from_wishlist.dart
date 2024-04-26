// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> removeFromWishlist(String? productId) async {
  List<dynamic> wishlist = FFAppState().wishlist;

  debugPrint("removeFromWishlist - API Called");
  debugPrint('removeFromWishlist - Product Id: $productId');

  // debug
  // int index = 0;
  // for (var item in wishlist) {
  //   debugPrint('${item["id"]} - $index');
  //   index++;
  // }

  if (productId == null) {
    debugPrint('removeFromWishlist - Product ID cannot be null');

    FFAppState().update(() {
      FFAppState().wishlist = wishlist;
    });

    return {
      'success': false,
      'message': 'Product ID cannot be null',
    };
  }

  bool isProductInWishlist =
      wishlist.any((item) => item['id'].toString() == productId.toString());

  if (!isProductInWishlist) {
    debugPrint('removeFromWishlist - Product is not in wishlist');

    FFAppState().update(() {
      FFAppState().wishlist = wishlist;
    });

    return {
      'success': false,
      'message': 'Product is not in wishlist',
    };
  }

  wishlist.removeWhere((item) => item['id'].toString() == productId.toString());

  debugPrint('removeFromWishlist - Product removed from wishlist');

  FFAppState().update(() {
    FFAppState().wishlist = wishlist;
  });

  return {
    'success': true,
    'message': 'Product removed from wishlist',
  };
}
