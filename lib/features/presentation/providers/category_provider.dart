import 'package:e_fran/features/models/category_model.dart';
import 'package:e_fran/features/services/category_service.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _category = [];

  List<CategoryModel> get category => _category;

  set category(List<CategoryModel> category) {
    _category = category;
    notifyListeners();
  }

  Future<void> getCategoty() async {
    try {
      List<CategoryModel> category = await CategoryService().getCategory();
      _category = category;
    } catch (e) {
      print(e);
    }
  }
}
