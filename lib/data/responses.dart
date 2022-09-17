import 'package:foodly/model/products_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Responses {
  Responses._internal();

  static final instance = Responses._internal();

  Future<List<Product>> fetchProduct() async {
    http.Response response =
        await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      List<Product> product = [];

      for (var item in body) {
        product.add(Product.fromJson(item));
      }

      return product;
    }
    return [];
  }

  Future<List<Category>> fetchCategory() async {
    http.Response response =
        await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      List<Category> category = [];

      for (var item in body) {
        category.add(Category.fromJson(item));
      }

      return category;
    }
    return [];
  }
}
