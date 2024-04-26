// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<dynamic> addToWishlist(String? productId) async {
  List<dynamic> wishlist = FFAppState().wishlist;

  debugPrint("addToWishlist - API Called");
  debugPrint('addToWishlist - Product Id: $productId');

  // debug
  // int index = 0;
  // for (var item in wishlist) {
  //   debugPrint('${item["id"]} , index: $index');
  //   index++;
  // }

  if (productId == null) {
    debugPrint('addToWishlist - Product ID cannot be null');

    FFAppState().update(() {
      FFAppState().wishlist = wishlist;
    });

    return {
      'success': false,
      'message': 'Product ID cannot be null',
    };
  }

  if (wishlist.any((item) => item['id'].toString() == productId.toString())) {
    debugPrint('addToWishlist - Product already exists');

    FFAppState().update(() {
      FFAppState().wishlist = wishlist;
    });

    return {
      'success': false,
      'message': 'Product already exists',
    };
  }

  try {
    final response = await http.get(Uri.parse(
        'https://natalie-papas-backend.onrender.com/api/v1/wishlist/product/$productId'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final productResponse = jsonResponse['data']['product'];
      wishlist.add(productResponse);

      debugPrint('addToWishlist - Product added successfully');

      FFAppState().update(() {
        FFAppState().wishlist = wishlist;
      });

      return {
        'success': true,
        'message': 'Product added successfully',
      };
    } else {
      debugPrint('addToWishlist - Product cannot be added');

      FFAppState().update(() {
        FFAppState().wishlist = wishlist;
      });

      return {
        'success': false,
        'message': 'Product cannot be added',
      };
    }
  } catch (error) {
    debugPrint('addToWishlist - Error Occured, try again later');

    FFAppState().update(() {
      FFAppState().wishlist = wishlist;
    });
    return {
      'success': false,
      'message': 'Error Occured, try again later',
    };
  }
}
