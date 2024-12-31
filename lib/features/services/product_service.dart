import 'dart:convert';

import 'package:e_fran/features/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  final String baseUrl;
  final http.Client client;
  final String baseUrlLocal;

  ProductService({
    this.baseUrl = "https://shamo-backend.buildwithangga.id/api",
    http.Client? client,
    this.baseUrlLocal = "http://10.0.2.2:8000/api",
  }) : client = client ?? http.Client();

  Future<List<ProductModel>> getProducts() async {
    final url = Uri.parse('$baseUrlLocal/products');
    final headers = {'Content-Type': 'application/json'};

    final response = await client.get(
      url,
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];

      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Product gagal terload');
    }
  }
}
