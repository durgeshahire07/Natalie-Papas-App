import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _wishlist = prefs.getStringList('ff_wishlist')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _wishlist;
    });
    _safeInit(() {
      _cart = prefs.getStringList('ff_cart')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _cart;
    });
    _safeInit(() {
      _cartPrice = prefs.getDouble('ff_cartPrice') ?? _cartPrice;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _SearchAPI = [];
  List<dynamic> get SearchAPI => _SearchAPI;
  set SearchAPI(List<dynamic> value) {
    _SearchAPI = value;
  }

  void addToSearchAPI(dynamic value) {
    _SearchAPI.add(value);
  }

  void removeFromSearchAPI(dynamic value) {
    _SearchAPI.remove(value);
  }

  void removeAtIndexFromSearchAPI(int index) {
    _SearchAPI.removeAt(index);
  }

  void updateSearchAPIAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _SearchAPI[index] = updateFn(_SearchAPI[index]);
  }

  void insertAtIndexInSearchAPI(int index, dynamic value) {
    _SearchAPI.insert(index, value);
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  List<dynamic> _wishlist = [];
  List<dynamic> get wishlist => _wishlist;
  set wishlist(List<dynamic> value) {
    _wishlist = value;
    prefs.setStringList(
        'ff_wishlist', value.map((x) => jsonEncode(x)).toList());
  }

  void addToWishlist(dynamic value) {
    _wishlist.add(value);
    prefs.setStringList(
        'ff_wishlist', _wishlist.map((x) => jsonEncode(x)).toList());
  }

  void removeFromWishlist(dynamic value) {
    _wishlist.remove(value);
    prefs.setStringList(
        'ff_wishlist', _wishlist.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromWishlist(int index) {
    _wishlist.removeAt(index);
    prefs.setStringList(
        'ff_wishlist', _wishlist.map((x) => jsonEncode(x)).toList());
  }

  void updateWishlistAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _wishlist[index] = updateFn(_wishlist[index]);
    prefs.setStringList(
        'ff_wishlist', _wishlist.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInWishlist(int index, dynamic value) {
    _wishlist.insert(index, value);
    prefs.setStringList(
        'ff_wishlist', _wishlist.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _cart = [];
  List<dynamic> get cart => _cart;
  set cart(List<dynamic> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => jsonEncode(x)).toList());
  }

  void addToCart(dynamic value) {
    _cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void removeFromCart(dynamic value) {
    _cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void updateCartAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInCart(int index, dynamic value) {
    _cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => jsonEncode(x)).toList());
  }

  double _cartPrice = 0.0;
  double get cartPrice => _cartPrice;
  set cartPrice(double value) {
    _cartPrice = value;
    prefs.setDouble('ff_cartPrice', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
