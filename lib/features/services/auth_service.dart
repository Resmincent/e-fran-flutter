import 'dart:convert';

import 'package:e_fran/features/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl;
  final http.Client client;
  final String baseUrlLocal;

  AuthService({
    this.baseUrl = "https://shamo-backend.buildwithangga.id/api",
    http.Client? client,
    this.baseUrlLocal = "http://10.0.2.2:8000/api",
  }) : client = client ?? http.Client();

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrlLocal/register');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    final response = await client.post(
      url,
      headers: headers,
      body: body,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      // Tampilkan pesan error detail ke console
      throw Exception('Error ${response.statusCode}: ${response.body}');
    }
  }

  void dispose() {
    client.close();
  }
}
