import 'dart:convert';

import 'package:e_fran/features/models/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  final String baseUrl;
  final http.Client client;
  final String baseUrlLocal;

  CategoryService({
    this.baseUrl = "https://shamo-backend.buildwithangga.id/api",
    http.Client? client,
    this.baseUrlLocal = "http://10.0.2.2:8000/api",
  }) : client = client ?? http.Client();

  Future<List<CategoryModel>> getCategory() async {
    final url = Uri.parse('$baseUrlLocal/categories');
    final headers = {'Content-Type': 'application/json'};

    final response = await client.get(
      url,
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];

      List<CategoryModel> categories = [];

      for (var item in data) {
        categories.add(CategoryModel.fromJson(item));
      }

      return categories;
    } else {
      throw Exception('Product Category gagal terload');
    }
  }
}
