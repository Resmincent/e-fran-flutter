import 'package:flutter/material.dart';

class ProductDetailProvider extends ChangeNotifier {
  bool _isWishlist = false;
  bool get isWishlist => _isWishlist;

  void toggleWishlist() {
    _isWishlist = !_isWishlist;
    notifyListeners();
  }
}
