// product_source.dart (Data Layer)

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:pos_flutter/data/inventory/models/inventory.dart';

// class ProductSource {
//   final String baseUrl;

//   ProductSource(this.baseUrl);

//   Future<List<ProductModel>> fetchProducts() async {
//     final response = await http.get(Uri.parse('$baseUrl/products'));

//     if (response.statusCode == 200) {
//       List jsonResponse = json.decode(response.body);
//       return jsonResponse.map((product) => ProductModel.fromJson(product)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }

//   Future<void> addProduct(ProductModel product) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/products'),
//       body: json.encode(product.toJson()),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode != 201) {
//       throw Exception('Failed to add product');
//     }
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;

class InventoryApiService {
  final String baseUrl = "http://your-api-url"; // Replace with your backend URL

  Future<List<Map<String, dynamic>>> getCategories(String token) async {
    final response = await http.get(
      Uri.parse('$baseUrl/products/categories'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<List<Map<String, dynamic>>> getProducts(String token) async {
    final response = await http.get(
      Uri.parse('$baseUrl/products/products'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
